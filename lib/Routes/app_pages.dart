import 'package:get/get.dart';
import 'package:main_ott/Pages/Authentication/Login/login_binding.dart';
import 'package:main_ott/Pages/Authentication/Login/login_screen.dart';
import 'package:main_ott/Pages/Authentication/OTP/otp_binding.dart';
import 'package:main_ott/Pages/Authentication/OTP/otp_screen.dart';
import 'package:main_ott/Pages/Authentication/Register/register_binding.dart';
import 'package:main_ott/Pages/Authentication/Register/register_screen.dart';
import 'package:main_ott/Pages/BottomNavigationScreen/bottom_navigation_binding.dart';
import 'package:main_ott/Pages/BottomNavigationScreen/bottom_navigation_screen.dart';
import 'package:main_ott/Pages/Category/category_binding.dart';
import 'package:main_ott/Pages/Category/category_screen.dart';
import 'package:main_ott/Pages/Authentication/ForgotPassword/forgot_password_binding.dart';
import 'package:main_ott/Pages/Authentication/ForgotPassword/forgot_password_screen.dart';
import 'package:main_ott/Pages/Home/DetailsScreen/details_bindng.dart';
import 'package:main_ott/Pages/Home/DetailsScreen/details_screen.dart';
import 'package:main_ott/Pages/Home/Video_Screen/video_screen.dart';
import 'package:main_ott/Pages/Home/Video_Screen/video_screen_binding.dart';
import 'package:main_ott/Pages/Home/home_binding.dart';
import 'package:main_ott/Pages/Home/home_screen.dart';
import 'package:main_ott/Pages/Home/landscapeVideo/landscape_binding.dart';
import 'package:main_ott/Pages/Home/landscapeVideo/landscape_player.dart';
import 'package:main_ott/Pages/Profile/AccountSetting/account_setting_binding.dart';
import 'package:main_ott/Pages/Profile/AccountSetting/account_setting_screen.dart';
import 'package:main_ott/Pages/Profile/ManageProfiles/manage_profile_binding.dart';
import 'package:main_ott/Pages/Profile/ManageProfiles/manage_profile_screen.dart';
import 'package:main_ott/Pages/Profile/Subscription/subscription_binding.dart';
import 'package:main_ott/Pages/Profile/Subscription/subscription_screen.dart';
import 'package:main_ott/Pages/Profile/profile_binding.dart';
import 'package:main_ott/Pages/Profile/profile_screen.dart';
import 'package:main_ott/Pages/Search/search_binding.dart';
import 'package:main_ott/Pages/Search/search_screen.dart';
import 'package:main_ott/Routes/app_route.dart';

class AppPages {
  static final List<GetPage> getPages = [
    GetPage(
        name: AppRoutes.loginScreen,
        page: () => const LoginScreen(),
        binding: LoginBinding(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.homeScreen,
        page: () => const HomeScreen(),
        binding: HomeBinding(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.registerScreen,
        page: () => const RegisterScreen(),
        binding: RegisterBinding(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.categoryScreen,
        page: () => const CategoryScreen(),
        binding: CategoryBinding(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.profileScreen,
        page: () => const ProfileScreen(),
        binding: ProfileBinding(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.searchScreeen,
        page: () => const SearchScreen(),
        binding: SearchBinding(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.bottomNavigationScreen,
        page: () => const BottomNavigationScreen(),
        binding: BottomNavigationBinding(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.forgotPasswordScreen,
        page: () => const ForgotPasswordScreen(),
        binding: ForgotPasswordBinding(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.otpScreen,
        page: () => const OtpScreen(),
        binding: OtpBinding(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.accountSetting,
        page: () => const AccountSettingScreen(),
        binding: AccountSettingBinding(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.subscriptionScreen,
        page: () => const SubscriptionScreen(),
        binding: SubscriptionBinding(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.manageProfileScreen,
        page: () => const ManageProfileScreen(),
        binding: ManageProfileBinding(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.detailsScreen,
        page: () => const DetailsScreen(),
        binding: DetailsBinding(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.videoScreen,
        page: () => VideoScreen(),
        binding: VideoScreenBinding(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.landscapeScreen,
        page: () => LandscapePlayer(),
        binding: LandscapeBinding(),
        transition: Transition.noTransition),
  ];
}
