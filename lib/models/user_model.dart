class UserModel {
  int? id;
  String? name;
  String? email;
  String? password;
  String? username;
  int? verified;
  String? profilePicture;
  int? balance;
  String? cardNumber;
  String? pin;
  String? token;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.password,
    this.username,
    this.verified,
    this.profilePicture,
    this.balance,
    this.cardNumber,
    this.pin,
    this.token,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    username = json['username'];
    verified = json['verified'];
    profilePicture = json['profile_picture'];
    balance = json['balance'];
    cardNumber = json['card_number'];
    pin = json['pin'];
    token = json['token'];
  }
  
    Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'username': username,
      'verified': verified,
      'profile_picture': profilePicture,
      'balance': balance,
      'card_number': cardNumber,
      'pin': pin,
      'token': token,
    };
  }


  UserModel copyWith({
    String? name,
    String? email,
    String? password,
    String? username,
    String? pin,
    int? balance,
  }) =>
      UserModel(
        id: id,
        username: username ?? this.username,
        name: name ?? this.name,
        email: email ?? this.email,
        password: password ?? this.password,
        pin: pin ?? this.pin,
        verified: verified,
        profilePicture: profilePicture,
        balance: balance ?? this.balance,
        cardNumber: cardNumber,
        token: token,
      );
}
