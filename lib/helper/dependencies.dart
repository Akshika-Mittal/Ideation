import 'package:get/get.dart';
import 'package:tiffin/controllers/subscription_controller.dart';
import 'package:tiffin/data/api/api_client.dart';
import 'package:tiffin/data/repository/subscription_repo.dart';

Future<void> init()async {
  //api client
  Get.lazyPut(()=>ApiClient(appBaseUrl:"http://localhost:8085"));

  //for repository
  Get.lazyPut(() => SubscriptionRepo(apiClient: Get.find()));

  //for controller
  Get.lazyPut(() => SubscriptionController(subscriptionRepo: Get.find()));
}