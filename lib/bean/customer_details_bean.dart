class CustomerDetailsBean {
  final String _phoneNumber;
  final String _name;
  final String _email;
  final String _password;
  final bool _isStudent;
  //final String _homeName;
  final String _homeAddress;
  //final String _homeLandmark;
  //final String _homePincode;
  //final String _officeName;
  final String _officeAddress;
  //final String _officeLandmark;
  //final String _officePincode;
  //final String _collegeName;
  final String _collegeAddress;
  //final String _collegeLandmark;
  //final String _collegePincode;
  final bool _subscriptionOrder;

  const CustomerDetailsBean({
    required String phoneNumber,
    required String name,
    required String email,
    required String password,
    required bool isStudent,
    //required String homeName,
    required String homeAddress,
    //required String homeLandmark,
    //required String homePincode,
    //required String officeName,
    required String officeAddress,
    //required String officeLandmark,
    //required String officePincode,
    //required String collegeName,
    required String collegeAddress,
    //required String collegeLandmark,
    //required String collegePincode,
    required bool subscriptionOrder,
  })
      : _phoneNumber=phoneNumber,
        _name=name,
        _email=email,
        _password=password,
        _isStudent=isStudent,
        //_homeName=homeName,
        _homeAddress=homeAddress,
        //_homeLandmark=homeLandmark,
        //_homePincode=homePincode,
        //_officeName=officeName,
        _officeAddress=officeAddress,
        //_officeLandmark=officeLandmark,
        //_officePincode=officePincode,
        //_collegeName=collegeName,
        _collegeAddress=collegeAddress,
        //_collegeLandmark=collegeLandmark,
        //_collegePincode=collegePincode,
        _subscriptionOrder=subscriptionOrder;



  @override
  String toString() {
    return 'CustomerDetailsBean{phoneNumber:$_phoneNumber,name: $_name,email: $_email, isStudent: $_isStudent}';
  }

  Map toJson() {
    return {
      'phoneNumber': _phoneNumber,
      'name': _name,
      'email': _email,
      'password': _password,
      'isStudent': _isStudent,
      //'homeName': _homeName,
      'homeAddress': _homeAddress,
      //'homeLandmark': _homeLandmark,
      //'homePincode': _homePincode,
      //'officeName': _officeName,
      'officeAddress': _officeAddress,
      //'officeLandmark': _officeLandmark,
      //'officePincode':_officePincode,
      //'collegeName': _collegeName,
      'collegeAddress': _collegeAddress,
      //'collegeLandmark': _collegeLandmark,
      //'collegePincode':_collegePincode,
      'subscriptionOrder':_subscriptionOrder,
    };
  }

  factory CustomerDetailsBean.fromJson(Map<String, dynamic> json) {
    return CustomerDetailsBean(
      phoneNumber: json['phoneNumber'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
      isStudent: json['isStudent'],
      //homeName: json['homeName'],
      homeAddress: json['homeAddress'],
      //homeLandmark: json['homeLandmark'],
      //homePincode: json['homePincode'],
      //officeName: json['officeName'],
      officeAddress: json['officeAddress'],
      //officeLandmark: json['officeLandmark'],
      //officePincode: json['officePincode'],
      //collegeName: json['collegeName'],
      collegeAddress: json['collegeAddress'],
      //collegeLandmark: json['collegeLandmark'],
      //collegePincode: json['collegePincode'],
      subscriptionOrder : json['subscriptionOrder'],
    );
  }
}
//   String get firstName => _firstName;
//
//   String get lastName => _lastName;
//
//   String get designation => _designation;