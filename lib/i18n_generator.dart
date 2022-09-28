import 'dart:async';
import 'dart:convert';

import 'package:build/build.dart';
import 'package:basic_utils/basic_utils.dart';

Builder i18nGenerator(BuilderOptions options) => I18nGenerate(options);

class I18nGenerate implements Builder {
  I18nGenerate(this.options);

  final BuilderOptions options;

  final i18nJsonPath = "assets/i18n/";

  @override
  FutureOr<void> build(BuildStep buildStep) async {
    final inputId = buildStep.inputId;
    final originPath = inputId.path;

    if (originPath.indexOf(i18nJsonPath) != 0) {
      return;
    }

    final src = await buildStep.readAsString(inputId);
    final json = jsonDecode(src) as Map<String, dynamic>;

    final resultKeyList = <String>[];

    // process
    splitMap(
      beforeKey: "",
      originMap: json,
      resultKeyList: resultKeyList,
    );

    final outputId = AssetId(inputId.package, inputId.path.replaceAll(inputId.extension, ".dart"));

    final resultList = resultKeyList.map((e) => "    ${e.camelCase}('''$e''')").toList();

    await buildStep.writeAsString(outputId, """
enum I18N {
${resultList.join(",\n")};

  final String jsonKey;
  const I18N(this.jsonKey);
}
""");
  }

  void splitMap({
    required String beforeKey,
    required Map<String, dynamic> originMap,
    required List<String> resultKeyList,
  }) {
    originMap.forEach((k, v) {
      if (v is String) {
        resultKeyList.add(k.combineBeforeKey(beforeKey));
      } else if (v is Map<String, dynamic>) {
        splitMap(
          beforeKey: k.combineBeforeKey(beforeKey),
          originMap: v,
          resultKeyList: resultKeyList,
        );
      } else if (v is List) {
        final length = v.length;
        for (var i = 0; i < length; i++) {
          resultKeyList.add("${k.combineBeforeKey(beforeKey)}@$i");
        }
      }
    });
  }

  @override
  Map<String, List<String>> get buildExtensions => {
        ".json": [".dart"]
      };
}

extension StringExt on String {
  String combineBeforeKey(String before) {
    return before.isEmpty ? this : "$before/$this";
  }

  String get replcaedKey {
    return replaceAll(RegExp(r"[\r\.\:\-\/]"), "_");
  }

  String get camelCase {
    final separatedWords = replcaedKey.split(RegExp(r'[!@#<>?":`~;[\]\\|=+)(*&^%-\s_]+'));
    var newString = '';

    for (final word in separatedWords) {
      newString += word[0].toUpperCase() + word.substring(1).toLowerCase();
    }

    return newString[0].toLowerCase() + newString.substring(1);
  }
}



/// enum value => wrong
// import 'dart:async';
// import 'dart:convert';

// import 'package:build/build.dart';
// import 'package:basic_utils/basic_utils.dart';

// Builder i18nGenerator(BuilderOptions options) => I18nGenerate(options);

// class I18nGenerate implements Builder {
//   I18nGenerate(this.options);

//   final BuilderOptions options;

//   final i18nJsonPath = "assets/i18n/";

//   @override
//   FutureOr<void> build(BuildStep buildStep) async {
//     final inputId = buildStep.inputId;
//     final originPath = inputId.path;

//     if (originPath.indexOf(i18nJsonPath) != 0) {
//       return;
//     }

//     final src = await buildStep.readAsString(inputId);
//     final json = jsonDecode(src) as Map<String, dynamic>;

//     final resultMap = <String, String>{};

//     // process
//     splitMap(
//       beforeKey: "",
//       originMap: json,
//       resultMap: resultMap,
//     );

//     final outputId = AssetId(inputId.package, inputId.path.replaceAll(inputId.extension, ".dart"));

//     final resultList = resultMap.entries.map((e) => "    ${e.key}('''${e.value}''')").toList();

//     await buildStep.writeAsString(outputId, resultList.join(",\n"));
//   }

//   void splitMap({
//     required String beforeKey,
//     required Map<String, dynamic> originMap,
//     required Map<String, String> resultMap,
//   }) {
//     originMap.forEach((k, v) {
//       if (v is String) {
//         resultMap[k.generateKey(beforeKey)] = v.replcaedValue;
//       } else if (v is Map<String, dynamic>) {
//         splitMap(
//           beforeKey: k.generateKey(beforeKey),
//           originMap: v,
//           resultMap: resultMap,
//         );
//       } else if (v is List) {
//         final length = v.length;
//         for (var i = 0; i < length; i++) {
//           resultMap["${k.generateKey(beforeKey)}_$i"] = (v[i] as String).replcaedValue;
//         }
//       }
//     });
//   }

//   @override
//   Map<String, List<String>> get buildExtensions => {
//         ".json": [".dart"]
//       };
// }

// extension StringExt on String {
//   String get replcaedValue {
//     return replaceAll("\n", "\\n");
//   }

//   String generateKey(String before) {
//     return before.isEmpty ? camelCase : "${before}_$this".camelCase;
//   }

//   String get replcaedKey {
//     return replaceAll(RegExp(r"[\r\.\:\-]"), "_");
//   }

//   String get camelCase {
//     final separatedWords = replcaedKey.split(RegExp(r'[!@#<>?":`~;[\]\\|=+)(*&^%-\s_]+'));
//     var newString = '';

//     for (final word in separatedWords) {
//       newString += word[0].toUpperCase() + word.substring(1).toLowerCase();
//     }

//     return newString[0].toLowerCase() + newString.substring(1);
//   }
// }
