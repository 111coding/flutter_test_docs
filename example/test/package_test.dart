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
