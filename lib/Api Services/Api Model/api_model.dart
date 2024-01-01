// To parse this JSON data, do
//
//     final siognUpApi = siognUpApiFromJson(jsonString);

import 'dart:convert';

SiognUpApi siognUpApiFromJson(String str) => SiognUpApi.fromJson(json.decode(str));

String siognUpApiToJson(SiognUpApi data) => json.encode(data.toJson());

class SiognUpApi {
  final bool? status;
  final User? user;

  SiognUpApi({
    this.status,
    this.user,
  });

  factory SiognUpApi.fromJson(Map<String, dynamic> json) => SiognUpApi(
    status: json["status"],
    user: json["user"] == null ? null : User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "user": user?.toJson(),
  };
}

class User {
  final String? id;
  final String? fName;
  final String? lName;
  final String? email;
  final String? mobile;
  final String? dob;
  final String? gender;
  final String? pod;
  final String? state;
  final String? city;
  final String? role;
  final String? token;

  User({
    this.id,
    this.fName,
    this.lName,
    this.email,
    this.mobile,
    this.dob,
    this.gender,
    this.pod,
    this.state,
    this.city,
    this.role,
    this.token,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["_id"],
    fName: json["f_name"],
    lName: json["l_name"],
    email: json["email"],
    mobile: json["mobile"],
    dob: json["dob"],
    gender: json["gender"],
    pod: json["pod"],
    state: json["state"],
    city: json["city"],
    role: json["role"],
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "f_name": fName,
    "l_name": lName,
    "email": email,
    "mobile": mobile,
    "dob": dob,
    "gender": gender,
    "pod": pod,
    "state": state,
    "city": city,
    "role": role,
    "token": token,
  };
}
