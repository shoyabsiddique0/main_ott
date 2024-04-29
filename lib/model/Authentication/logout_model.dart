import 'package:main_ott/model/abstract_model.dart';

class LogoutModel extends AbstractModel {
  int? success;
  String? message;
  LogoutModel? data;

  LogoutModel({this.success, this.message, this.data});

  LogoutModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? LogoutModel.fromJson(json['data']) : null;
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
  Home? home;
  BottomNav? bottomNav;
  Profile? profile;
  Others? others;
  Action? action;
  bool? mandatoryUpdate;
  String? redirectionUrl;

  Data(
      {this.home,
      this.bottomNav,
      this.profile,
      this.others,
      this.action,
      this.mandatoryUpdate,
      this.redirectionUrl});

  Data.fromJson(Map<String, dynamic> json) {
    home = json['home'] != null ? Home.fromJson(json['home']) : null;
    bottomNav = json['bottom_nav'] != null
        ? BottomNav.fromJson(json['bottom_nav'])
        : null;
    profile =
        json['profile'] != null ? Profile.fromJson(json['profile']) : null;
    others = json['others'] != null ? Others.fromJson(json['others']) : null;
    action = json['action'] != null ? Action.fromJson(json['action']) : null;
    mandatoryUpdate = json['mandatory_update'];
    redirectionUrl = json['redirection_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (home != null) {
      data['home'] = home!.toJson();
    }
    if (bottomNav != null) {
      data['bottom_nav'] = bottomNav!.toJson();
    }
    if (profile != null) {
      data['profile'] = profile!.toJson();
    }
    if (others != null) {
      data['others'] = others!.toJson();
    }
    if (action != null) {
      data['action'] = action!.toJson();
    }
    data['mandatory_update'] = mandatoryUpdate;
    data['redirection_url'] = redirectionUrl;
    return data;
  }
}

class Home {
  bool? continueWatching;

  Home({this.continueWatching});

  Home.fromJson(Map<String, dynamic> json) {
    continueWatching = json['continue_watching'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['continue_watching'] = continueWatching;
    return data;
  }
}

class BottomNav {
  bool? home;
  bool? category;
  bool? search;
  bool? profile;

  BottomNav({this.home, this.category, this.search, this.profile});

  BottomNav.fromJson(Map<String, dynamic> json) {
    home = json['home'];
    category = json['category'];
    search = json['search'];
    profile = json['profile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['home'] = home;
    data['category'] = category;
    data['search'] = search;
    data['profile'] = profile;
    return data;
  }
}

class Profile {
  Main? main;

  Profile({this.main});

  Profile.fromJson(Map<String, dynamic> json) {
    main = json['main'] != null ? Main.fromJson(json['main']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (main != null) {
      data['main'] = main!.toJson();
    }
    return data;
  }
}

class Main {
  bool? accountSettings;
  bool? subscription;
  bool? watchlist;
  bool? download;
  bool? changePassword;

  Main(
      {this.accountSettings,
      this.subscription,
      this.watchlist,
      this.download,
      this.changePassword});

  Main.fromJson(Map<String, dynamic> json) {
    accountSettings = json['account_settings'];
    subscription = json['subscription'];
    watchlist = json['watchlist'];
    download = json['download'];
    changePassword = json['change_password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['account_settings'] = accountSettings;
    data['subscription'] = subscription;
    data['watchlist'] = watchlist;
    data['download'] = download;
    data['change_password'] = changePassword;
    return data;
  }
}

class Others {
  bool? notificationSettings;
  bool? contact;
  bool? about;
  bool? tnc;
  bool? privacyPolicy;
  bool? cancellationPolicy;
  bool? refundPolicy;

  Others(
      {this.notificationSettings,
      this.contact,
      this.about,
      this.tnc,
      this.privacyPolicy,
      this.cancellationPolicy,
      this.refundPolicy});

  Others.fromJson(Map<String, dynamic> json) {
    notificationSettings = json['notification_settings'];
    contact = json['contact'];
    about = json['about'];
    tnc = json['tnc'];
    privacyPolicy = json['privacy_policy'];
    cancellationPolicy = json['cancellation_policy'];
    refundPolicy = json['refund_policy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['notification_settings'] = notificationSettings;
    data['contact'] = contact;
    data['about'] = about;
    data['tnc'] = tnc;
    data['privacy_policy'] = privacyPolicy;
    data['cancellation_policy'] = cancellationPolicy;
    data['refund_policy'] = refundPolicy;
    return data;
  }
}

class Action {
  bool? deleteAccount;
  bool? logout;
  bool? login;

  Action({this.deleteAccount, this.logout, this.login});

  Action.fromJson(Map<String, dynamic> json) {
    deleteAccount = json['delete_account'];
    logout = json['logout'];
    login = json['login'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['delete_account'] = deleteAccount;
    data['logout'] = logout;
    data['login'] = login;
    return data;
  }
}
