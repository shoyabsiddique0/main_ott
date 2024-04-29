import 'package:main_ott/model/abstract_model.dart';

class ForgotPasswordModel extends AbstractModel {
  int? success;
  String? message;
  List? data;

  ForgotPasswordModel({this.success, this.message, this.data});

  ForgotPasswordModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data!.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
