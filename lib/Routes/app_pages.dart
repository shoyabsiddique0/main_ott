import 'package:get/get.dart';
import 'package:main_ott/Presentation/Pages/Authentication/Login/login_binding.dart';
import 'package:main_ott/Presentation/Pages/Authentication/Login/login_screen.dart';
import 'package:main_ott/Presentation/Pages/Authentication/OTP/otp_binding.dart';
import 'package:main_ott/Presentation/Pages/Authentication/OTP/otp_screen.dart';
import 'package:main_ott/Presentation/Pages/Authentication/Register/register_binding.dart';
import 'package:main_ott/Presentation/Pages/Authentication/Register/register_screen.dart';
import 'package:main_ott/Presentation/Pages/Authentication/Splash/splash_bindings.dart';
import 'package:main_ott/Presentation/Pages/Authentication/Splash/splash_screen.dart';
import 'package:main_ott/Presentation/Pages/Authentication/UpdatePassword/update_password_bindings.dart';
import 'package:main_ott/Presentation/Pages/Authentication/UpdatePassword/update_password_screen.dart';
import 'package:main_ott/Presentation/Pages/BottomNavigationScreen/bottom_navigation_binding.dart';
import 'package:main_ott/Presentation/Pages/BottomNavigationScreen/bottom_navigation_screen.dart';
import 'package:main_ott/Presentation/Pages/Category/Listing/category_video_listing.dart';
import 'package:main_ott/Presentation/Pages/Category/Listing/category_video_listing_bindings.dart';
import 'package:main_ott/Presentation/Pages/Category/category_binding.dart';
import 'package:main_ott/Presentation/Pages/Category/category_screen.dart';
import 'package:main_ott/Presentation/Pages/Authentication/ForgotPassword/forgot_password_binding.dart';
import 'package:main_ott/Presentation/Pages/Authentication/ForgotPassword/forgot_password_screen.dart';
import 'package:main_ott/Presentation/Pages/Home/ContinueWatching/continue_watching_bindings.dart';
import 'package:main_ott/Presentation/Pages/Home/ContinueWatching/continue_watching_screen.dart';
import 'package:main_ott/Presentation/Pages/Home/DetailsScreen/MoreBy/more_by_binding.dart';
import 'package:main_ott/Presentation/Pages/Home/DetailsScreen/MoreBy/more_by_screen.dart';
import 'package:main_ott/Presentation/Pages/Home/DetailsScreen/details_bindng.dart';
import 'package:main_ott/Presentation/Pages/Home/DetailsScreen/details_screen.dart';
import 'package:main_ott/Presentation/Pages/Home/Video_Screen/video_screen.dart';
import 'package:main_ott/Presentation/Pages/Home/Video_Screen/video_screen_binding.dart';
import 'package:main_ott/Presentation/Pages/Home/View_All_Screen/view_all_binding.dart';
import 'package:main_ott/Presentation/Pages/Home/View_All_Screen/view_all_screen.dart';
import 'package:main_ott/Presentation/Pages/Home/home_binding.dart';
import 'package:main_ott/Presentation/Pages/Home/home_screen.dart';
import 'package:main_ott/Presentation/Pages/Home/landscapeVideo/landscape_binding.dart';
import 'package:main_ott/Presentation/Pages/Home/landscapeVideo/landscape_player.dart';
import 'package:main_ott/Presentation/Pages/Profile/AboutUs/about_us_bindings.dart';
import 'package:main_ott/Presentation/Pages/Profile/AboutUs/about_us_screen.dart';
import 'package:main_ott/Presentation/Pages/Profile/AccountSetting/account_setting_binding.dart';
import 'package:main_ott/Presentation/Pages/Profile/AccountSetting/account_setting_screen.dart';
import 'package:main_ott/Presentation/Pages/Profile/ChangePassword/change_password_binding.dart';
import 'package:main_ott/Presentation/Pages/Profile/ChangePassword/change_password_screen.dart';
import 'package:main_ott/Presentation/Pages/Profile/ContactUs/contact_us_bindings.dart';
import 'package:main_ott/Presentation/Pages/Profile/ContactUs/contact_us_srceen.dart';
import 'package:main_ott/Presentation/Pages/Profile/Downloads/downloads_binding.dart';
import 'package:main_ott/Presentation/Pages/Profile/Downloads/downloads_screen.dart';
import 'package:main_ott/Presentation/Pages/Profile/ManageProfiles/ProfileManagement/profile_manage_bindng.dart';
import 'package:main_ott/Presentation/Pages/Profile/ManageProfiles/ProfileManagement/profile_manage_screen.dart';
import 'package:main_ott/Presentation/Pages/Profile/ManageProfiles/manage_profile_binding.dart';
import 'package:main_ott/Presentation/Pages/Profile/ManageProfiles/manage_profile_screen.dart';
import 'package:main_ott/Presentation/Pages/Profile/Policies/CancelPolicy/cancel_policy_binding.dart';
import 'package:main_ott/Presentation/Pages/Profile/Policies/CancelPolicy/cancel_policy_screen.dart';
import 'package:main_ott/Presentation/Pages/Profile/Policies/PricavyPolicy/privacy_policy_bindings.dart';
import 'package:main_ott/Presentation/Pages/Profile/Policies/PricavyPolicy/privacy_policy_screen.dart';
import 'package:main_ott/Presentation/Pages/Profile/Policies/RefundPolicy/refund_policy_binding.dart';
import 'package:main_ott/Presentation/Pages/Profile/Policies/RefundPolicy/refund_policy_screen.dart';
import 'package:main_ott/Presentation/Pages/Profile/Policies/policy_screen.dart';
import 'package:main_ott/Presentation/Pages/Profile/Subscription/subscription_binding.dart';
import 'package:main_ott/Presentation/Pages/Profile/Subscription/subscription_screen.dart';
import 'package:main_ott/Presentation/Pages/Profile/TermAndCondition/term_condition_binding.dart';
import 'package:main_ott/Presentation/Pages/Profile/TermAndCondition/term_condition_screen.dart';
import 'package:main_ott/Presentation/Pages/Profile/Watchlist/watchlist_binding.dart';
import 'package:main_ott/Presentation/Pages/Profile/Watchlist/watchlist_screen.dart';
import 'package:main_ott/Presentation/Pages/Profile/profile_binding.dart';
import 'package:main_ott/Presentation/Pages/Profile/profile_screen.dart';
import 'package:main_ott/Presentation/Pages/Search/search_binding.dart';
import 'package:main_ott/Presentation/Pages/Search/search_screen.dart';
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
    GetPage(
        name: AppRoutes.watchlistScreen,
        page: () => const WatchlistScreen(),
        binding: WatchlistBinding(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.downloadsScreen,
        page: () => const DownloadsScreen(),
        binding: DownloadsBinding(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.moreByScreen,
        page: () => const MoreByScreen(),
        binding: MoreByBinding(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.changePasswordScreen,
        page: () => const ChangePassword(),
        binding: ChangePasswordBinding(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.profileManageScreen,
        page: () => const ProfileManageScreen(),
        binding: ProfileManageBinding(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.viewAllScreen,
        page: () => const ViewAllScreen(),
        binding: ViewAllBindings(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.contactUsScreen,
        page: () => const ContactUsScreen(),
        binding: ContactUsBindings(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.termsAndCOnditionScreen,
        page: () => const TermsAndConditions(),
        binding: TermsAndConditionsBinding(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.refundPolicyScreen,
        page: () => const RefundPolicyScreen(),
        binding: RefundPolicyBindings(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.policyScreen,
        page: () => const PolicyScreen(),
        // binding: RefundPolicyBindings(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.privacyScreen,
        page: () => const PrivacyPolicyScreen(),
        binding: PrivacyPolicyBindings(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.cancellationScreen,
        page: () => const CancellationPolicyScreen(),
        binding: CancellationPolicyBindings(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.continueWatchingScreen,
        page: () => const ContinueWatchingScreen(),
        binding: ContinueWatchingBinding(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.aboutUsScreen,
        page: () => const AboutUsScreen(),
        binding: AboutUsBindings(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.updatePasswordScreen,
        page: () => const UpdatePassword(),
        binding: UpdatePasswordBindings(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.splashScreen,
        page: () => const SplashScreen(),
        binding: SplashBindings(),
        transition: Transition.rightToLeft),
    GetPage(
        name: AppRoutes.categoryVideoListingScreen,
        page: () => const CategoryVideoListing(),
        binding: CategoryVideoListingBindings(),
        transition: Transition.rightToLeft),
  ];
}
