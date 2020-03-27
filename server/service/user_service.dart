class User {
  create(String name) {
    print("create user ${name}");
  }

  String get(String id) {
    String name;
    switch (id) {
      case "a1":
        name = "Bob";
        break;
      case "a2":
        name = "Alice";
        break;
      default:
        name = "Unknown";
    }
    return name;
  }
}
