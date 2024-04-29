import 'package:main_ott/model/abstract_model.dart';

class OtpModel extends AbstractModel {
  int? success;
  String? message;
  List<String>? data;

  OtpModel({this.success, this.message, this.data});

  OtpModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <String>[];
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
      data['data'] = this.data!.map((v) => v).toList();
    }
    return data;
  }
}
