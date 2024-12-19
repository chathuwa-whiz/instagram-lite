class AppUser {
  late final String uid;
  late final String email;
  late final String name;

  AppUser({
    required this.uid,
    required this.email,
    required this.name
  });

  // convert app user -> json
  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'email': email,
      'name': name
    };
  }

  // convert json -> app user
  factory AppUser.fromJson(Map<String, dynamic> jsonUser) {
    return AppUser(
        uid: jsonUser['uid'],
        email: jsonUser['email'],
        name: jsonUser['name']
    );
  }
}