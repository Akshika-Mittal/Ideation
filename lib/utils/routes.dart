import 'package:flutter/material.dart';
import 'package:tiffin/components/notifications.dart';
import 'package:tiffin/screens/about_us/about_us_screen.dart';
import 'package:tiffin/screens/cancellation_policy/cancellation_policy_screen.dart';
import 'package:tiffin/screens/customer_support/customer_support_screen.dart';
import 'package:tiffin/screens/delivery_location/components/add_another_address.dart';
import 'package:tiffin/screens/feedback/feedback_screen.dart';
import 'package:tiffin/screens/forgot_password/forgot_password_screen.dart';
import 'package:tiffin/screens/home/home_screen.dart';
import 'package:tiffin/screens/profile/profile_screen.dart';
import 'package:tiffin/screens/settings/settings_screen.dart';
import 'package:tiffin/screens/sign_in/sign_in_screen.dart';
import 'package:tiffin/screens/sign_up/sign_up_screen.dart';
import 'package:tiffin/screens/single_order/single_order_screen.dart';
import 'package:tiffin/screens/splash/splash_screen.dart';
import '../screens/complete_profile/complete_profile_screen.dart';
import '../screens/delivery_location/delivery_location_screen.dart';
import '../screens/faq/faq_screen.dart';
import '../screens/home/components/dietician_details_connect.dart';
import '../screens/home/components/healthy_plan_menu.dart';
import '../screens/home/components/healthy_profile.dart';
// import '../screens/non_existing_user/components/college_details.dart';
// import '../screens/non_existing_user/non_existing_user_screen.dart';
import '../screens/offers/offers.dart';
import '../screens/order_details/order_details_screen.dart';
import '../screens/order_history/order_history_screen.dart';
import '../screens/otp/otp_screen.dart';
import '../screens/out_of_service/out_of_service_screen.dart';
import '../screens/payment_options/components/add_new_card.dart';
import '../screens/payment_options/payment_options_screen.dart';
import '../screens/polling/menu_selection/menu_selection_screen.dart';
import '../screens/polling/polling_result/components/polling_recommendation.dart';
import '../screens/polling/polling_result/polling_result.dart';
import '../screens/polling_accepted/polling_accepted_screen.dart';
import '../screens/referrals/referrals_screen.dart';
import '../screens/settings/components/account_setting/components/account_deleted_screen.dart';
import '../screens/settings/components/account_setting/components/anything_else.dart';
import '../screens/settings/components/account_setting/components/app_issue.dart';
import '../screens/settings/components/account_setting/components/change_email.dart';
import '../screens/settings/components/account_setting/components/delete_account.dart';
import '../screens/settings/components/account_setting/components/dont_want_to_use.dart';
import '../screens/settings/components/account_setting/components/final_delete.dart';
import '../screens/settings/components/account_setting/sccount_setting_screen.dart';
import '../screens/settings/components/notification_preferences/notification_preferences_screen.dart';
import '../screens/sign_up/components/college_location.dart';
import '../screens/sign_up/components/home_location.dart';
import '../screens/sign_up/components/office_location.dart';
import '../screens/subscription_plan/components/Plans30Days.dart';
import '../screens/subscription_plan/components/goal.dart';
import '../screens/subscription_plan/components/Plans15Days.dart';
import '../screens/subscription_plan/subscription_plan_screen.dart';
import '../screens/tiff_credits/tiff_credit_screen.dart';
import '../screens/track_order/track_order_screen.dart';

final Map<String,WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),

  Notifications.routeName: (context) => Notifications(),

  SignInScreen.routeName: (context) => SignInScreen(),
  //LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),

  // NonExistingUserScreen.routeName: (contexxt) => NonExistingUserScreen(),
  // CollegeDetailsScreen.routeName: (context) => CollegeDetailsScreen(),
  //AddressDetails.routeName: (context) => AddressDetails(),
  CollegeLocation.routeName: (context) =>CollegeLocation(),
  HomeLocation.routeName: (context) => HomeLocation(),
  OfficeLocation.routeName: (context) => OfficeLocation(),

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
  FInalDelete.routeName : (context) => FInalDelete(phoneNumber: '',),

  SubscriptionPlanScreen.routeName : (context) => SubscriptionPlanScreen(),
  Plan15Days.routeName : (context) => Plan15Days(),
  Plan30Days.routeName : (context) => Plan30Days(),
  Goal.routeName : (context) => Goal(),

  FAQScreen.routeName : (context) =>FAQScreen(),
  MenuSelection.routeName : (context) => MenuSelection(),
  PollingAcceptedScreen.routeName : (context) => PollingAcceptedScreen(),
  PollingRecommendation.routeName : (context) => PollingRecommendation(),
  PollingResultsScreen.routeName : (context) =>PollingResultsScreen(),
  FeedbackScreen.routeName : (context) => FeedbackScreen(),
  TiffCreditsScreen.routeName : (context) =>TiffCreditsScreen(),

  PaymentOptions.routeName : (context) => PaymentOptions(),
  AddNewCardScreen.routeName : (context) => AddNewCardScreen(),

  DeliveryLocationScreen.routeName : (context) => DeliveryLocationScreen(),
  AddAnotherAddress.routeName : (context) => AddAnotherAddress(),

  OrderDetailsScreen.routeName : (context) => OrderDetailsScreen(),

  OrderHistoryScreen.routeName : (context) => OrderHistoryScreen(),

  ReferralsScreen.routeName : (context) => ReferralsScreen(),

  TrackOrderScreen.routeName : (context) => TrackOrderScreen(),

  OutOfServiceScreen.routeName : (context) => OutOfServiceScreen(),

  HealthyPlanMenu.routeName :(context) =>HealthyPlanMenu(),
  HealthyProfile.routeName : (context) => HealthyProfile(),
  DieticianDetails.routeName :(context) => DieticianDetails(),

  OffersScreen.routeName : (context) => OffersScreen(),
  AccountDeletedScreen.routeName : (context) =>AccountDeletedScreen(),
};