# TestDocs

## Overview

This package generate markdown from @TestDocs annotation

## Quick Start Guide for TestDocs

Add a dev_dependency on ```test_docs``` and ```build_runner``` in your pubspec

```yml
dev_dependencies:
  test_docs:
  build_runner:
```

Write TestDocs annotaion on your test code

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:test_docs/test_docs.dart';

@TestDocs(
  title: "test_docs test code",
  dependencies: "test_docs:",
  description: "this is test_docs test!",
)
void main() {
  test("package test", () {
    expect(1, 1);
  });
}
```

run build runner

```
flutter pub run build_runner build
```

generated markdown file

```markdown
# test_docs test code
[test/package_test.dart](test/package_test.dart)

### description

this is test_docs test!

### dependencies

'''yml
test_docs:
'''

### Code

'''dart
import 'package:flutter_test/flutter_test.dart';
import 'package:test_docs/test_docs.dart';


void main() {
  test("package test", () {
    expect(1, 1);
  });
}

'''

```