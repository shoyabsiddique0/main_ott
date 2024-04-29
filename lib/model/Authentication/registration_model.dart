import 'package:main_ott/model/abstract_model.dart';

class RegistrationModel extends AbstractModel {
  int? success;
  String? message;
  Data? data;

  RegistrationModel({this.success, this.message, this.data});

  RegistrationModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'].toString();
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? name;
  String? email;
  String? phone;
  String? city;

  Data({this.name, this.email, this.phone, this.city});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    city = json['city'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['phone'] = phone;
    data['city'] = city;
    return data;
  }
}
