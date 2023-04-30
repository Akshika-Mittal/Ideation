import 'dart:convert';
import 'package:http/http.dart' as http;
import '../utils/url_constants.dart';

class CustomerServices{
  Future<Map<String,dynamic>> getCustomerDetails(String sessionId)async{
    final response = await http.get(
      Uri.parse(UrlConstant.getCustomerUrl.replaceAll("{sessionId}", sessionId)),
      headers: {'Cookie': 'JSESSIONID=$sessionId'},
    );
    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      print(responseBody);
      return responseBody as Map<String, dynamic>;
    }
    else {
      throw Exception('Failed to retrieve user details: ${response.statusCode}');
    }
  }

  Future<Map<String,dynamic>> updateCustomerDetails(String sessionId,String customerField, String newValue)async{
    print("my sptrint\n");
    print(newValue);
    var body = jsonEncode({'sessionId': sessionId, 'customerField': customerField , 'customerFieldValue':newValue});
    final response = await http.put(
      Uri.parse(UrlConstant.updateCustomerUrl+"?sessionId=$sessionId&customerField=$customerField&customerFieldValue=$newValue"),
      headers: {'Content-Type': 'application/json'},
    );

    print(response.body);
    print("end\n");
    if (response.statusCode == 200) {
      print("");
      final responseBody = jsonDecode(response.body);
      print(responseBody);
      return responseBody as Map<String, dynamic>;
    }
    else {
      throw Exception('Failed to update user details: ${response.statusCode}');
    }
  }
}