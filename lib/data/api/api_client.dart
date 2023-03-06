import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService{
  late String token;
  final String appBaseUrl; //url of the app- the app will talk to server using this
  late Map<String,String> _mainHeaders;
  ApiClient({
    required this.appBaseUrl
  }){
    baseUrl=appBaseUrl;
    timeout=Duration(seconds: 30);
    token="";
    _mainHeaders = {
      'Content-type':'application/json;charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }
  Future<Response> getData(String uri,)async{
    try{
      Response response = await get(uri);
      print(uri);
      print(response.statusCode);
      return response;
    }
    catch(e){
      return Response(statusCode: 1,statusText: e.toString());
    }
  }
}