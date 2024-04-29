import 'dart:io';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:main_ott/Utils/constants.dart';
import 'package:main_ott/Utils/utils.dart';

String generateBoundary() {
  final random = Random();
  final codeUnits = List.generate(16, (index) {
    return random.nextInt(33) + 89; // ASCII printable characters
  });

  return String.fromCharCodes(codeUnits);
}

Future<Map<String, String>>? getHeaders({String? token}) async {
  String basicAuth = await Utils.authHeader();
  String? token = await Utils().getToken();
  String acceptedLanguages = Const.acceptedLanguage;
  String platform = Platform.operatingSystem;
  String applicationVersion = await Utils().getAppVersion();

  debugPrint("App Version: $applicationVersion");
  debugPrint("Access Token: $token");
  debugPrint("Basic Auth: $basicAuth");
  debugPrint("Accepted Languages: $acceptedLanguages");
  debugPrint("Platform: $platform");

  Map<String, String> header = {
    'authorization': basicAuth,
    'Accept-Language': acceptedLanguages,
    'access-token': token ?? "",
    'platform': platform,
    'uuid': Const.uuid,
    'version': applicationVersion,
    // 'Content-Type': "multipart/form-data; boundary=xxx",
    'Accept': "*/*"
  };

  return header;
}
