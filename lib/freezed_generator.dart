import 'dart:async';
import 'dart:convert';

import 'package:build/build.dart';
import 'package:basic_utils/basic_utils.dart';

Builder swaggerSchemaToFreezed(BuilderOptions options) => SwaggerSchemaToFreezedGenerator(options);

class SwaggerSchemaToFreezedGenerator implements Builder {
  SwaggerSchemaToFreezedGenerator(this.options);

  final BuilderOptions options;

  final typeMap = {
    "string": "String",
    "boolean": "bool",
    "number": "int",
    "object": "dynamic",
  };

  String getType(Map jsonProperty, String key, List? requiredList) {
    final isRequired = requiredList?.contains(key) ?? false;
    String prefix = isRequired ? "required " : "";
    String typeStr = "";

    if (jsonProperty["\$ref"] != null) {
      typeStr = "${jsonProperty["\$ref"]}".split("/").last;
    }

    final type = jsonProperty["type"];
    if (type != null) {
      typeStr = typeMap[type] ?? "sssss";
    }

    if (jsonProperty["additionalProperties"] != null) {
      typeStr = "Map<String,${typeMap[jsonProperty["additionalProperties"]["type"]]}>";
    }

    if (type == "array") {
      final items = jsonProperty["items"];
      if (items["type"] != null) {
        typeStr = "List<$type>";
      } else if (items["oneOf"] != null) {
        typeStr = "List";
      } else {
        typeStr = "${items["\$ref"]}".split("/").last;
      }
    }

    return "$prefix$typeStr${isRequired ? '' : '?'}";
  }

  @override
  FutureOr<void> build(BuildStep buildStep) async {
    final inputId = buildStep.inputId;

    final src = await buildStep.readAsString(inputId);
    final json = jsonDecode(src);
    final schemas = json["components"]["schemas"] as Map;

    List<String> outputCode = [];

    schemas.forEach((key, value) async {
      final modelName = "$key";
      final fileName = StringUtils.camelCaseToLowerUnderscore(modelName);

      if (value["properties"] == null) {
        return;
      }

      final properties = value["properties"];
      final requiredList = value["required"] ?? <String>[];
      final dartPropeerties = <String>[];

      if (properties is Map) {
        properties.forEach((pKey, pValue) {
          final propertyCamel = "$pKey".camelCase();
          final propertyUnderScore = StringUtils.camelCaseToLowerUnderscore(propertyCamel);
          final isUnserScore = propertyUnderScore.contains("_");

          final dartP = "${getType(pValue, '$pKey', requiredList)} $propertyCamel,";
          final jsonKey = isUnserScore ? '@JsonKey(name: "$propertyUnderScore") ' : "";
          dartPropeerties.add("$jsonKey$dartP");
        });
      }

      final outputFreezed = """
import 'package:freezed_annotation/freezed_annotation.dart';

part '$fileName.freezed.dart';
part '$fileName.g.dart';

@freezed
abstract class $modelName with _\$$modelName {
  const factory $modelName({
    ${dartPropeerties.join("\n")}
  }) = _$modelName;

  factory $modelName.fromJson(Map<String, dynamic> json) => _\$${modelName}FromJson(json);
}
""";

      outputCode.add(outputFreezed);
    });

    final outputId = AssetId(inputId.package, inputId.path.replaceAll(".swagger.json", ".dart"));
    await buildStep.writeAsString(outputId, outputCode.join("""

==============================

"""));

    ;
  }

  @override
  Map<String, List<String>> get buildExtensions => {
        ".swagger.json": [".dart"]
      };
}

extension StringExt on String {
  String camelCase() {
    final separatedWords = split(RegExp(r'[!@#<>?":`~;[\]\\|=+)(*&^%-\s_]+'));
    var newString = '';

    for (final word in separatedWords) {
      newString += word[0].toUpperCase() + word.substring(1).toLowerCase();
    }

    return newString[0].toLowerCase() + newString.substring(1);
  }
}
