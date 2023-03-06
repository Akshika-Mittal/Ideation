import 'package:get/get.dart';
import 'package:tiffin/data/repository/subscription_repo.dart';
import 'package:tiffin/models/subscription_plans_model.dart';

class SubscriptionController extends GetxController{
  final SubscriptionRepo subscriptionRepo;
  SubscriptionController({required this.subscriptionRepo});
  List<ProductModel> _subscriptionList =[];
  List<ProductModel> get subcriptionList => _subscriptionList;

  int _quantity=0;

  Future<void> getSubscriptionList() async{
    print("Inside method");
    Response response = await subscriptionRepo.getSubscriptionList();
    print(subcriptionList);
    if(response.statusCode == 200){
      print("Got products");
      _subscriptionList=[];
      _subscriptionList.addAll(Plans.fromJson(response.body).products);
      update();
    }
    else{
      print(response.statusCode);
      print("Didn't get products");
    }
  }

  void setQuantity(bool isIncrement){
    if(isIncrement){
      _quantity = _quantity+1;
    }
    else{
      _quantity = _quantity-1;
    }
  }
}