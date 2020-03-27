
import 'package:test/test.dart';

import '../server/service/user_service.dart';

main() {
  test('userService.create', () {
    var userService = User();
    var actual = userService.get("a1");
    expect(actual, "Bob");
    actual = userService.get("a2");
    expect(actual, "Alice");
  });
}