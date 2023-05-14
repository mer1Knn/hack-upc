// import 'dart:convert';

// class User {
//   final String email;
//   final String password;
//   final String fullname;
//   final List<String> followers;
//   final List<String> following;

//   const User({
//     required this.password,
//     required this.email,
//     required this.fullname,
//     required this.followers,
//     required this.following,});

//   Map<String, dynamic> toMap() {
//     return {
//       'email': email,
//       'password': password,
//       'fullname': fullname,
//       'followers': followers,
//       'following': following,
//     };
//   }

//   factory User.fromMap(Map<String, dynamic> map) {
//     return User(
//       email: map['email'] ?? '',
//       password: map['password'] ?? '',
//       fullname: map['fullname'] ?? '',
//       followers: List<String>.from(map['followers']),
//       following: List<String>.from(map['following']),
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory User.fromJson(String source) => User.fromMap(json.decode(source));

//   User copyWith({
//     String? email,
//     String? password,
//     String? fullname,
//     List<String>? followers,
//     List<String>? following,
//   }) {
//     return User(
//       email: email ?? this.email,
//       password: password ?? this.password,
//       fullname: fullname ?? this.fullname,
//       followers: followers ?? this.followers,
//       following: following ?? this.following,
//     );
//   }
// }

class User {
  String fullname;
  String email;
  String password;

  User({required this.fullname, required this.email, required this.password});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      fullname: json['fullname'],
      email: json['email'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['fullname'] = fullname;
    data['email'] = email;
    data['password'] = password;
    return data;
  }

  static fromMap(e) {}
}
