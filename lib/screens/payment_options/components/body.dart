

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiffin/screens/payment_options/components/add_new_card.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';

class Body extends StatefulWidget {
  final String cardNumber;
  const Body({
    Key? key,
    required this.cardNumber,
  });

  @override
  State<Body> createState() => _BodyState(this.cardNumber);
}

class _BodyState extends State<Body> {
  final String cardNumber;
  _BodyState(this.cardNumber);

  final List<String> cardNumberList = <String>[''];
  //final List<int> msgCount = <int>[2, 0, 10, 6, 52, 4, 0, 2];
  void calling(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>AddNewCardScreen()));
    //addItemToList();
  }
  void addItemToList(){
    print("Akshika");
    setState(() {
      cardNumberList.insert(0,cardNumber);
      print(cardNumber);
      //msgCount.insert(0, 0);
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          color: kLightGrey,
          child: Padding(
            padding: EdgeInsets.only(left:20, right:20,top:20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Credit & Debit Cards',
                  style: kBodyHeading1TextBoldBlack,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        calling();
                      },
                      child: ShaderMask(
                        blendMode: BlendMode.srcATop,
                        shaderCallback: (bounds) =>kPrimaryGradientColor.createShader(bounds),
                        child: Icon(
                          Icons.add,
                          size: 25,
                        ),
                      ),
                    ),
                    Text(
                      'Add new Card',
                      style: kB1BodyText,
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: addItemToList,
                  child: Text("Add"),
                ),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Expanded(
                            child: ListView.builder(
                                padding: const EdgeInsets.all(8),
                                itemCount: cardNumberList.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    height: 50,
                                    margin: EdgeInsets.all(2),
                                    //color: msgCount[index]>=10? Colors.blue[400]:
                                    //msgCount[index]>3? Colors.blue[100]: Colors.grey,
                                    child: Center(
                                        child: Text('${cardNumberList[index]}',
                                          style: TextStyle(fontSize: 18,color: kBlackColor),
                                        )
                                    ),
                                  );
                                }
                            )
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
