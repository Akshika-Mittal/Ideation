import 'package:get/get.dart';
import 'package:tiffin/data/api/api_client.dart';

class SubscriptionRepo extends GetxService{
  final ApiClient apiClient;
  SubscriptionRepo({
    required this.apiClient
});

  Future<Response> getSubscriptionList() async{
    return await apiClient.getData("/findAllProducts");
  }
}