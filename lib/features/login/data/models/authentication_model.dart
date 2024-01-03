import 'dart:convert';

AuthenticationModel authenticationModelFromJson(String str) =>
    AuthenticationModel.fromJson(json.decode(str));

String authenticationModelToJson(AuthenticationModel data) =>
    json.encode(data.toJson());

class AuthenticationModel {
  AuthenticationModel({
    int? code,
    Data? data,
    String? message,
    String? status,
  }) {
    _code = code;
    _data = data;
    _message = message;
    _status = status;
  }

  AuthenticationModel.fromJson(dynamic json) {
    _code = json['code'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _message = json['message'];
    _status = json['status'];
  }

  int? _code;
  Data? _data;
  String? _message;
  String? _status;

  AuthenticationModel copyWith({
    int? code,
    Data? data,
    String? message,
    String? status,
  }) =>
      AuthenticationModel(
        code: code ?? _code,
        data: data ?? _data,
        message: message ?? _message,
        status: status ?? _status,
      );

  int? get code => _code;

  Data? get data => _data;

  String? get message => _message;

  String? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['message'] = _message;
    map['status'] = _status;
    return map;
  }
}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));

String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    User? user,
    String? token,
  }) {
    _user = user;
    _token = token;
  }

  Data.fromJson(dynamic json) {
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
    _token = json['token'];
  }

  User? _user;
  String? _token;

  Data copyWith({
    User? user,
    String? token,
  }) =>
      Data(
        user: user ?? _user,
        token: token ?? _token,
      );

  User? get user => _user;

  String? get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    map['token'] = _token;
    return map;
  }
}

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    int? createdAt,
    int? updatedAt,
    int? id,
    String? firstName,
    String? lastName,
    String? fullName,
    String? email,
    int? dateOfBirth,
    dynamic phoneNumber,
    String? role,
    int? departmentId,
    String? gender,
    String? imagePath,
  }) {
    _fullName = fullName;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _id = id;
    _firstName = firstName;
    _lastName = lastName;
    _email = email;
    _phoneNumber = phoneNumber;
    _role = role;
    _departmentId = departmentId;
    _dateOfBirth = dateOfBirth;
    _gender = gender;
    _imagePath = imagePath;
  }

  User.fromJson(dynamic json) {
    _fullName = json['fullName'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _id = json['id'];
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _email = json['email'];
    _phoneNumber = json['phoneNumber'];
    _role = json['role'];
    _departmentId = json['departmentId'];
    _dateOfBirth = json['dateOfBirth'];
    _gender = json['gender'];
    _imagePath = json['imagePath'];
  }

  int? _createdAt;
  int? _updatedAt;
  int? _id;
  String? _firstName;
  String? _lastName;
  String? _email;
  dynamic _phoneNumber;
  String? _role;
  int? _departmentId;
  String? _fullName;
  int? _dateOfBirth;
  String? _gender;
  String? _imagePath;

  User copyWith({
    int? createdAt,
    int? updatedAt,
    int? id,
    String? firstName,
    String? lastName,
    String? email,
    dynamic phoneNumber,
    String? role,
    String? fullName,
    int? departmentId,
    int? dateOfBirth,
    String? gender,
    String? imagePath,
  }) =>
      User(
        createdAt: createdAt ?? _createdAt,
        updatedAt: updatedAt ?? _updatedAt,
        id: id ?? _id,
        firstName: firstName ?? _firstName,
        lastName: lastName ?? _lastName,
        email: email ?? _email,
        phoneNumber: phoneNumber ?? _phoneNumber,
        role: role ?? _role,
        departmentId: departmentId ?? _departmentId,
        fullName: fullName ?? _fullName,
        dateOfBirth: dateOfBirth ?? _dateOfBirth,
        gender: gender ?? _gender,
        imagePath: imagePath ?? _imagePath,
      );

  int? get createdAt => _createdAt;

  int? get updatedAt => _updatedAt;

  int? get id => _id;

  String? get firstName => _firstName;

  String? get lastName => _lastName;

  String? get email => _email;

  dynamic get phoneNumber => _phoneNumber;

  String? get role => _role;

  int? get departmentId => _departmentId;

  String? get fullName => _fullName;

  int? get dateOfBirth => _dateOfBirth;

  String? get gender => _gender;

  String? get imagePath => _imagePath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['id'] = _id;
    map['firstName'] = _firstName;
    map['lastName'] = _lastName;
    map['email'] = _email;
    map['phoneNumber'] = _phoneNumber;
    map['role'] = _role;
    map['departmentId'] = _departmentId;
    map['fullName'] = _fullName;
    map['dateOfBirth'] = _dateOfBirth;
    map['gender'] = _gender;
    map['imagePath'] = _imagePath;
    return map;
  }
}
