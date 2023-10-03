class UserEditFormModel {
  final String? username;
  final String? name;
  final String? email;
  final String? password;
  final String? pin;

  UserEditFormModel({
    this.username,
    this.name,
    this.email,
    this.password,
    this.pin,
  });

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'name': name,
      'email': email,
      'password': password,
      'pin': pin,
    };
  }
}
