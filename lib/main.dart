import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:get_storage/get_storage.dart';
import 'package:main_ott/Routes/app_pages.dart';
import 'package:main_ott/Routes/app_route.dart';
import 'package:main_ott/Presentation/Theme/colors.dart';
import 'package:main_ott/Routes/initial_bindings.dart';
// import 'package:main_ott/Utils/utils.dart';

void main() async {
  await GetStorage.init();
  await dotenv.load(fileName: '.env');
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.sizeOf(Get.context!).height * 0.8,
        child: Text(
          'Error!\n${details.exception}\nYou are getting this probably due to apis are implemented here and apis are not live, if you want it to be resolved ask Mr. MANAGER to upload apis on the server',
          style: const TextStyle(color: Colors.yellow),
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  };
  // var token = await Utils().getToken();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: ((context, child) => GetMaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: AppRoutes.splashScreen,
            onInit: () {},
            getPages: AppPages.getPages,
            initialBinding: InitialBindings(),
            theme: ThemeData(
              primaryColor: kPrimaryColor,
              brightness: Brightness.light,
            ),
          )),
    );
  }
}
