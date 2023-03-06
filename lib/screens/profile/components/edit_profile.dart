import 'dart:io';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/dimensions.dart';

class edit_Profile extends StatefulWidget {
  const edit_Profile({Key? key}) : super(key: key);

  @override
  State<edit_Profile> createState() => _edit_ProfileState();
}

class _edit_ProfileState extends State<edit_Profile> {
  String name = 'Syed Hussain';
  String userId = 'INUP627578587';
  String mobileNumber = '+918299253670';
  String homeAddress = '610/304/ Dariyabad, Allahabad';
  String officeAddress = '304/610/1 Dariyabad, Allahabad';
  String emailAddress = 'syed.darwisofficial@gmail.com';

  File? _imageFiles;
  final _picker = ImagePicker();
  void photChange() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    print('PickedFile: ${pickedFile.toString()}');
    if (pickedFile != null) {
      print('PickedFile: ${pickedFile.toString()}');
      setState(() {
        _imageFiles = File(pickedFile.path); // Exception occurred here
      });
    } else {
      print('PickedFile: is null');
    }
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _mobileNumber =
    TextEditingController(text: this.mobileNumber);
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: Dimensions.screenHeight,
        width: Dimensions.screenWidth,
        child: Stack(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: Dimensions.height100,
                    width: Dimensions.width100,
                    //child: pickedImage==null? AssetImage('assets/images/G60.png') : FileImage(File(pickedImage.path)),
                    decoration: BoxDecoration(
                      border: Border.all(color: kWhiteColor, width: Dimensions.width4/2),
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: (_imageFiles != null)
                            ? FileImage(_imageFiles!) as ImageProvider
                            : AssetImage('assets/images/HV.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          photChange();
                        });
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Color(0xffEB4749),
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          Positioned(
            top: 150,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color(0xFFF2F2F2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Name',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Edit',
                              style: TextStyle(
                                  color: Color(0xffeb4749),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14),
                            ))
                      ],
                    ),
                    Container(
                      height: 2,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Mobile Number',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          mobileNumber,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        TextButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                    title: Text(
                                      'Edit Number',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    content: Container(
                                      height: 150,
                                      child: Column(
                                        children: [
                                          TextFormField(
                                            controller: _mobileNumber,
                                            textAlign: TextAlign.left,
                                            decoration: InputDecoration(
                                              enabledBorder:
                                              UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black),
                                              ),
                                              focusedBorder:
                                              UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black),
                                              ),
                                              border: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                          Spacer(),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: MaterialButton(
                                                  onPressed: () {},
                                                  child: Container(
                                                    // width: MediaQuery.of(context).size.width/2-5,
                                                      height: 35,
                                                      decoration: BoxDecoration(
                                                          color:
                                                          Color(0xFFEB4749),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(
                                                              10)),
                                                      child: Center(
                                                          child: Text(
                                                            'Cancel',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                FontWeight.w800,
                                                                color: Colors.white,
                                                                fontSize: 16),
                                                          ))),
                                                ),
                                              ),
                                              //Spacer(),
                                              Expanded(
                                                child: MaterialButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      _mobileNumber.text;
                                                    });
                                                  },
                                                  child: Container(
                                                    //width: MediaQuery.of(context).size.width/2-5,
                                                      height: 35,
                                                      decoration: BoxDecoration(
                                                          color:
                                                          Color(0xFFEB4749),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(
                                                              10)),
                                                      child: Center(
                                                          child: Text(
                                                            'Submit',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                FontWeight.w800,
                                                                color: Colors.white,
                                                                fontSize: 16),
                                                          ))),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )),
                              );
                            },
                            child: Text(
                              'Edit',
                              style: TextStyle(
                                  color: Color(0xffeb4749),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14),
                            ))
                      ],
                    ),
                    Container(
                      height: 2,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Email',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          emailAddress,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Edit',
                              style: TextStyle(
                                  color: Color(0xffeb4749),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14),
                            ))
                      ],
                    ),
                    Container(
                      height: 2,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Home Address',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          homeAddress,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Edit',
                              style: TextStyle(
                                  color: Color(0xffeb4749),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14),
                            ))
                      ],
                    ),
                    Container(
                      height: 2,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Office Address',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          officeAddress,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Edit',
                              style: TextStyle(
                                  color: Color(0xffeb4749),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14),
                            ))
                      ],
                    ),
                    Container(
                      height: 2,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 60),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffeb4749)),
                          child: GestureDetector(
                            onTap: () {},
                            child: Center(
                                child: Text(
                                  'Save',
                                  style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                                )),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffeb4749)),
                          child: GestureDetector(
                            onTap: () {},
                            child: Center(
                                child: Text(
                                  'Cancel',
                                  style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                                )),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class editName extends StatefulWidget {
  const editName({Key? key}) : super(key: key);

  @override
  State<editName> createState() => _editNameState();
}

class _editNameState extends State<editName> {
  final _controllerFirstName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
