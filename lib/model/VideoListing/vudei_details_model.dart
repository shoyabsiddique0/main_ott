import 'package:main_ott/model/abstract_model.dart';

class VideoDetailsModel extends AbstractModel {
  int? success;
  String? message;
  Data? data;

  VideoDetailsModel({this.success, this.message, this.data});

  VideoDetailsModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
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
  int? videoId;
  bool? lockForFreeUsers;
  bool? inPlayList;
  String? videoName;
  String? description;
  String? bannerImage;
  String? ageRating;
  int? sequence;
  int? totalViewCount;
  int? seasonCount;
  int? episodeCount;
  double? ratings;
  String? lastReleaseDate;
  VideoLanguage? videoLanguage;
  List<VideoLinkSubtitles>? videoLinkSubtitles;
  Category? category;
  List<GenreIds>? genreIds;
  List<Seasons>? seasons;
  List<VideoArtists>? videoArtists;
  bool? adultRated;
  bool? kidsFriendly;

  Data(
      {this.videoId,
      this.lockForFreeUsers,
      this.inPlayList,
      this.videoName,
      this.description,
      this.bannerImage,
      this.ageRating,
      this.sequence,
      this.totalViewCount,
      this.seasonCount,
      this.episodeCount,
      this.ratings,
      this.lastReleaseDate,
      this.videoLanguage,
      this.videoLinkSubtitles,
      this.category,
      this.genreIds,
      this.seasons,
      this.videoArtists,
      this.adultRated,
      this.kidsFriendly});

  Data.fromJson(Map<String, dynamic> json) {
    videoId = json['videoId'];
    lockForFreeUsers = json['lockForFreeUsers'];
    inPlayList = json['inPlayList'];
    videoName = json['videoName'];
    description = json['description'];
    bannerImage = json['bannerImage'];
    ageRating = json['ageRating'];
    sequence = json['sequence'];
    totalViewCount = json['totalViewCount'];
    seasonCount = json['seasonCount'];
    episodeCount = json['episodeCount'];
    ratings = json['ratings'];
    lastReleaseDate = json['lastReleaseDate'];
    videoLanguage = json['videoLanguage'] != null
        ? new VideoLanguage.fromJson(json['videoLanguage'])
        : null;
    if (json['videoLinkSubtitles'] != null) {
      videoLinkSubtitles = <VideoLinkSubtitles>[];
      json['videoLinkSubtitles'].forEach((v) {
        videoLinkSubtitles!.add(new VideoLinkSubtitles.fromJson(v));
      });
    }
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    if (json['genre_ids'] != null) {
      genreIds = <GenreIds>[];
      json['genre_ids'].forEach((v) {
        genreIds!.add(new GenreIds.fromJson(v));
      });
    }
    if (json['seasons'] != null) {
      seasons = <Seasons>[];
      json['seasons'].forEach((v) {
        seasons!.add(new Seasons.fromJson(v));
      });
    }
    if (json['videoArtists'] != null) {
      videoArtists = <VideoArtists>[];
      json['videoArtists'].forEach((v) {
        videoArtists!.add(new VideoArtists.fromJson(v));
      });
    }
    adultRated = json['adultRated'];
    kidsFriendly = json['kidsFriendly'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['videoId'] = videoId;
    data['lockForFreeUsers'] = lockForFreeUsers;
    data['inPlayList'] = inPlayList;
    data['videoName'] = videoName;
    data['description'] = description;
    data['bannerImage'] = bannerImage;
    data['ageRating'] = ageRating;
    data['sequence'] = sequence;
    data['totalViewCount'] = totalViewCount;
    data['seasonCount'] = seasonCount;
    data['episodeCount'] = episodeCount;
    data['ratings'] = ratings;
    data['lastReleaseDate'] = lastReleaseDate;
    if (videoLanguage != null) {
      data['videoLanguage'] = videoLanguage!.toJson();
    }
    if (videoLinkSubtitles != null) {
      data['videoLinkSubtitles'] =
          videoLinkSubtitles!.map((v) => v.toJson()).toList();
    }
    if (category != null) {
      data['category'] = category!.toJson();
    }
    if (genreIds != null) {
      data['genre_ids'] = genreIds!.map((v) => v.toJson()).toList();
    }
    if (seasons != null) {
      data['seasons'] = seasons!.map((v) => v.toJson()).toList();
    }
    if (videoArtists != null) {
      data['videoArtists'] = videoArtists!.map((v) => v.toJson()).toList();
    }
    data['adultRated'] = adultRated;
    data['kidsFriendly'] = kidsFriendly;
    return data;
  }
}

class VideoLanguage {
  int? videoLanguageId;
  String? videoLanguageName;
  String? videoLanguageCode;

  VideoLanguage(
      {this.videoLanguageId, this.videoLanguageName, this.videoLanguageCode});

  VideoLanguage.fromJson(Map<String, dynamic> json) {
    videoLanguageId = json['videoLanguageId'];
    videoLanguageName = json['videoLanguageName'];
    videoLanguageCode = json['videoLanguageCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['videoLanguageId'] = videoLanguageId;
    data['videoLanguageName'] = videoLanguageName;
    data['videoLanguageCode'] = videoLanguageCode;
    return data;
  }
}

class VideoLinkSubtitles {
  int? videoLinkSubtitleId;
  VideoLanguage? language;
  String? srtFileLink;

  VideoLinkSubtitles(
      {this.videoLinkSubtitleId, this.language, this.srtFileLink});

  VideoLinkSubtitles.fromJson(Map<String, dynamic> json) {
    videoLinkSubtitleId = json['videoLinkSubtitleId'];
    language = json['language'] != null
        ? new VideoLanguage.fromJson(json['language'])
        : null;
    srtFileLink = json['srtFileLink'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['videoLinkSubtitleId'] = videoLinkSubtitleId;
    if (language != null) {
      data['language'] = language!.toJson();
    }
    data['srtFileLink'] = srtFileLink;
    return data;
  }
}

class Category {
  int? categoryId;
  String? categoryName;
  String? image;
  String? description;

  Category({this.categoryId, this.categoryName, this.image, this.description});

  Category.fromJson(Map<String, dynamic> json) {
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

class GenreIds {
  int? genreId;
  String? genreName;
  String? description;
  String? image;

  GenreIds({this.genreId, this.genreName, this.description, this.image});

  GenreIds.fromJson(Map<String, dynamic> json) {
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

class Seasons {
  int? seasonId;
  String? seasonName;
  int? sequence;
  int? episodeCount;
  List<Episodes>? episodes;

  Seasons(
      {this.seasonId,
      this.seasonName,
      this.sequence,
      this.episodeCount,
      this.episodes});

  Seasons.fromJson(Map<String, dynamic> json) {
    seasonId = json['seasonId'];
    seasonName = json['seasonName'];
    sequence = json['sequence'];
    episodeCount = json['episodeCount'];
    if (json['episodes'] != null) {
      episodes = <Episodes>[];
      json['episodes'].forEach((v) {
        episodes!.add(new Episodes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['seasonId'] = seasonId;
    data['seasonName'] = seasonName;
    data['sequence'] = sequence;
    data['episodeCount'] = episodeCount;
    if (episodes != null) {
      data['episodes'] = episodes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Episodes {
  int? videoLinkId;
  int? episodeId;
  int? sequence;
  bool? lockForFreeUsers;
  String? episodeName;
  String? image;
  String? url4k;
  String? url1080p;
  String? url480p;
  String? url240p;
  int? playedUntil;
  int? durationSeconds;
  String? releaseDate;
  String? shortDescription;
  String? longDescription;
  int? noOfViews;

  Episodes(
      {this.videoLinkId,
      this.episodeId,
      this.sequence,
      this.lockForFreeUsers,
      this.episodeName,
      this.image,
      this.url4k,
      this.url1080p,
      this.url480p,
      this.url240p,
      this.playedUntil,
      this.durationSeconds,
      this.releaseDate,
      this.shortDescription,
      this.longDescription,
      this.noOfViews});

  Episodes.fromJson(Map<String, dynamic> json) {
    videoLinkId = json['videoLinkId'];
    episodeId = json['episodeId'];
    sequence = json['sequence'];
    lockForFreeUsers = json['lockForFreeUsers'];
    episodeName = json['episodeName'];
    image = json['image'];
    url4k = json['url4k'];
    url1080p = json['url1080p'];
    url480p = json['url480p'];
    url240p = json['url240p'];
    playedUntil = json['playedUntil'];
    durationSeconds = json['durationSeconds'];
    releaseDate = json['releaseDate'];
    shortDescription = json['shortDescription'];
    longDescription = json['longDescription'];
    noOfViews = json['noOfViews'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['videoLinkId'] = videoLinkId;
    data['episodeId'] = episodeId;
    data['sequence'] = sequence;
    data['lockForFreeUsers'] = lockForFreeUsers;
    data['episodeName'] = episodeName;
    data['image'] = image;
    data['url4k'] = url4k;
    data['url1080p'] = url1080p;
    data['url480p'] = url480p;
    data['url240p'] = url240p;
    data['playedUntil'] = playedUntil;
    data['durationSeconds'] = durationSeconds;
    data['releaseDate'] = releaseDate;
    data['shortDescription'] = shortDescription;
    data['longDescription'] = longDescription;
    data['noOfViews'] = noOfViews;
    return data;
  }
}

class VideoArtists {
  int? videoArtistId;
  Artist? artist;

  VideoArtists({this.videoArtistId, this.artist});

  VideoArtists.fromJson(Map<String, dynamic> json) {
    videoArtistId = json['videoArtistId'];
    artist =
        json['artist'] != null ? new Artist.fromJson(json['artist']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['videoArtistId'] = videoArtistId;
    if (artist != null) {
      data['artist'] = artist!.toJson();
    }
    return data;
  }
}

class Artist {
  int? artistId;
  String? artistName;
  String? image;
  String? description;
  String? designation;

  Artist(
      {this.artistId,
      this.artistName,
      this.image,
      this.description,
      this.designation});

  Artist.fromJson(Map<String, dynamic> json) {
    artistId = json['artistId'];
    artistName = json['artistName'];
    image = json['image'];
    description = json['description'];
    designation = json['designation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['artistId'] = artistId;
    data['artistName'] = artistName;
    data['image'] = image;
    data['description'] = description;
    data['designation'] = designation;
    return data;
  }
}
