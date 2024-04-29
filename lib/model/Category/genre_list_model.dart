import 'package:main_ott/model/abstract_model.dart';

class GenreListModel extends AbstractModel {
  int? success;
  String? message;
  List<Data>? data;

  GenreListModel({this.success, this.message, this.data});

  GenreListModel.fromJson(Map<String, dynamic> json) {
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
  int? genreId;
  String? genreName;
  String? description;
  String? image;

  Data({this.genreId, this.genreName, this.description, this.image});

  Data.fromJson(Map<String, dynamic> json) {
    genreId = json['genreId'];
    genreName = json['genreName'];
    description = json['description'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['genreId'] = genreId;
    data['genreName'] = genreName;
    data['description'] = description;
    data['image'] = image;
    return data;
  }
}
