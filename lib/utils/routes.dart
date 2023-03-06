import 'package:flutter/material.dart';
import 'package:tiffin/components/notifications.dart';
import 'package:tiffin/screens/about_us/about_us_screen.dart';
import 'package:tiffin/screens/cancellation_policy/cancellation_policy_screen.dart';
// import 'package:tiffin/screens/customer_support/components/chat_support.dart';
import 'package:tiffin/screens/customer_support/customer_support_screen.dart';
import 'package:tiffin/screens/feedback/feedback_screen.dart';
import 'package:tiffin/screens/forgot_password/forgot_password_screen.dart';
import 'package:tiffin/screens/home/home_screen.dart';
import 'package:tiffin/screens/non_existing_user/components/office_address.dart';
import 'package:tiffin/screens/profile/profile_screen.dart';
import 'package:tiffin/screens/settings/settings_screen.dart';
import 'package:tiffin/screens/sign_in/sign_in_screen.dart';
import 'package:tiffin/screens/sign_up/sign_up_screen.dart';
import 'package:tiffin/screens/single_order/single_order_screen.dart';
import 'package:tiffin/screens/splash/splash_screen.dart';
import '../screens/complete_profile/complete_profile_screen.dart';
import '../screens/non_existing_user/components/address.dart';
import '../screens/non_existing_user/components/college_address.dart';
import '../screens/non_existing_user/components/college_details.dart';
import '../screens/non_existing_user/components/home_address.dart';
import '../screens/non_existing_user/non_existing_user_screen.dart';
import '../screens/otp/otp_screen.dart';
import '../screens/polling/menu_selection/menu_selection_screen.dart';
import '../screens/polling/polling_result/components/polling_recommendation.dart';
import '../screens/polling/polling_result/result_accepted_screen.dart';
import '../screens/settings/components/account_setting/components/anything_else.dart';
import '../screens/settings/components/account_setting/components/app_issue.dart';
import '../screens/settings/components/account_setting/components/change_email.dart';
import '../screens/settings/components/account_setting/components/delete_account.dart';
import '../screens/settings/components/account_setting/components/dont_want_to_use.dart';
import '../screens/settings/components/account_setting/components/final_delete.dart';
import '../screens/settings/components/account_setting/sccount_setting_screen.dart';
import '../screens/settings/components/notification_preferences/notification_preferences_screen.dart';
import '../screens/subscription_plan/components/Gold.dart';
import '../screens/subscription_plan/components/Platinum.dart';
import '../screens/subscription_plan/components/ProGold.dart';
import '../screens/subscription_plan/components/ProPlatinum.dart';
import '../screens/subscription_plan/components/ProSilver.dart';
import '../screens/subscription_plan/components/goal.dart';
import '../screens/subscription_plan/components/silver.dart';
import '../screens/subscription_plan/subscription_plan_screen.dart';

final Map<String,WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),

  Notifications.routeName: (context) => Notifications(),

  SignInScreen.routeName: (context) => SignInScreen(),
  //LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),

  NonExistingUserScreen.routeName: (contexxt) => NonExistingUserScreen(),
  CollegeDetailsScreen.routeName: (context) => CollegeDetailsScreen(),
  //AddressDetails.routeName: (context) => AddressDetails(),
  CollegeAddress.routeName: (context) =>CollegeAddress(),
  HomeAddress.routeName: (context) => HomeAddress(),
  OfficeAddress.routeName: (context) => OfficeAddress(),

  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),

  HomeScreen.routeName: (context) => HomeScreen(),

  SingleOrderScreen.routeName :(context) =>SingleOrderScreen(),

  ProfileScreen.routeName: (context) => ProfileScreen(),

  CustomerSupport.routeName: (context) => CustomerSupport(),
  // ChatSupport.routeName: (context) => ChatSupport(),

  AboutUs.routeName : (context) => AboutUs(),

  CancelationPolicy.routeName : (context) => CancelationPolicy(),

  SettingsScreen.routeName : (context) => SettingsScreen(),
  NotificationPreferenceScreen.routeName : (context) => NotificationPreferenceScreen(),
  AccountSettingScreen.routeName : (context) => AccountSettingScreen(),
  ChangeEmail.routeName : (context) => ChangeEmail(),
  DeleteAccount.routeName : (context) => DeleteAccount(),
  DontWantTo.routeName : (context) => DontWantTo(),
  AppIssue.routeName : (context) => AppIssue(),
  AnythingElse.routeName : (context) => AnythingElse(),
  FInalDelete.routeName : (context) => FInalDelete(),

  SubscriptionPlanScreen.routeName : (context) => SubscriptionPlanScreen(),
  Silver.routeName : (context) => Silver(),
  ProSilver.routeName : (context) => ProSilver(),
  Gold.routeName : (context) => Gold(),
  ProGold.routeName : (context) => ProGold(),
  Platinum.routeName : (context) => Platinum(),
  ProPlatinum.routeName : (context) => ProPlatinum(),
  Goal.routeName : (context) => Goal(),

  MenuSelection.routeName : (context) => MenuSelection(),
  ResultAcceptedScreen.routeName : (context) => ResultAcceptedScreen(),
  PollingRecommendation.routeName : (context) => PollingRecommendation(),

  FeedbackScreen.routeName : (context) => FeedbackScreen(),
};