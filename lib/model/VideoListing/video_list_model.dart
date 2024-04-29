import 'package:main_ott/model/abstract_model.dart';

class VideoListModel extends AbstractModel {
  int? success;
  String? message;
  List<Data>? data;

  VideoListModel({this.success, this.message, this.data});

  VideoListModel.fromJson(Map<String, dynamic> json) {
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
  int? videoId;
  String? videoName;
  String? bannerImage;
  int? sequence;
  int? durationSeconds;
  int? seasonCount;
  String? shortDescription;

  Data(
      {this.videoId,
      this.videoName,
      this.bannerImage,
      this.sequence,
      this.durationSeconds,
      this.seasonCount,
      this.shortDescription});

  Data.fromJson(Map<String, dynamic> json) {
    videoId = json['videoId'];
    videoName = json['videoName'];
    bannerImage = json['bannerImage'];
    sequence = json['sequence'];
    durationSeconds = json['durationSeconds'];
    seasonCount = json['seasonCount'];
    shortDescription = json['shortDescription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['videoId'] = videoId;
    data['videoName'] = videoName;
    data['bannerImage'] = bannerImage;
    data['sequence'] = sequence;
    data['durationSeconds'] = durationSeconds;
    data['seasonCount'] = seasonCount;
    data['shortDescription'] = shortDescription;
    return data;
  }
}
