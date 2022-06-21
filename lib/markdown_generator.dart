import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:test_docs/test_docs_annotation_base.dart';

Builder markdownGenerator(BuilderOptions options) => PartBuilder([const TestMetaGenerator()], '.md');

class TestMetaGenerator extends GeneratorForAnnotation<TestDocs> {
  const TestMetaGenerator();

  @override
  generateForAnnotatedElement(Element element, ConstantReader annotation, BuildStep buildStep) async {
    final inputId = buildStep.inputId;

    final src = await buildStep.readAsString(inputId);

    final path = inputId.path;
    final title = annotation.read("title").stringValue;
    final description = annotation.read("description").stringValue;
    final dependencies = annotation.read("dependencies").stringValue;

    final replacedSrc = src.replaceFirst(RegExp(r"@TestDocs((.|\n)*?)description((.|\n)*?)\)"), "");

    final markdownOutput = """
# $title
[$path]($path)

### description

$description

### dependencies

```yml
$dependencies
```

### Code

```dart
$replacedSrc
```
""";

    final withoutExtension = inputId.path.substring(0, inputId.path.length - '.dart'.length);
    final outputId = AssetId(inputId.package, '$withoutExtension.md');
    await buildStep.writeAsString(outputId, markdownOutput);
  }
}
