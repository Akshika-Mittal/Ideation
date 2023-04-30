/// This class contains the Urls of the api
class UrlConstant {
  /// Base URL
  static const String baseUrl = "https://550a-2405-201-6000-41c3-9d0c-961a-34f-1bcb.in.ngrok.io";

  static const String checkPhoneNumber = "$baseUrl/checkPhoneNumber?phoneNumber={phoneNumber}";

  /// URL for adding the customer
  static const String addCustomer = "$baseUrl/addCustomer";

  /// URL for fetching customer
  static const String getCustomerUrl = "$baseUrl/getCustomer?sessionId={sessionId}";

  /// URL for fetching users
  static const String getUsersUrl = "$baseUrl/user/getUsers";

  /// URL for updating the user
  static const String updateCustomerUrl = "$baseUrl/updateCustomer";

  /// URL for deleting the Customer
  static const String deleteCustomer = "$baseUrl/deleteCustomer?phoneNumber={phoneNumber}";
}
