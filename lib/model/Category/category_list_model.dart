import 'package:main_ott/model/abstract_model.dart';

class CategoryListModel extends AbstractModel {
  int? success;
  String? message;
  List<Data>? data;

  CategoryListModel({this.success, this.message, this.data});

  CategoryListModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
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

class Data {
  int? categoryId;
  String? categoryName;
  String? image;
  String? description;

  Data({this.categoryId, this.categoryName, this.image, this.description});

  Data.fromJson(Map<String, dynamic> json) {
    categoryId = json['categoryId'];
    categoryName = json['categoryName'];
    image = json['image'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['categoryId'] = categoryId;
    data['categoryName'] = categoryName;
    data['image'] = image;
    data['description'] = description;
    return data;
  }
}
