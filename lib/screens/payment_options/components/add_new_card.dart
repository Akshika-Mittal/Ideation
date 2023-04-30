import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tiffin/screens/payment_options/components/body.dart';
import 'package:tiffin/utils/AppColors.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/widgets/gradientBorderDDefaultButton.dart';
import '../../../utils/dimensions.dart';
import '../../../widgets/AppBarWidget.dart';
import '../../../widgets/screen_heading.dart';
import 'CardMonthFormatter.dart';
import 'CardNumberFormatter.dart';
import 'CardType.dart';
import 'CardUtils.dart';

class AddNewCardScreen extends StatefulWidget {
  const AddNewCardScreen({Key? key}) : super(key: key);
  static String routeName = "/add_new_card";
  @override
  State<AddNewCardScreen> createState() => _AddNewCardScreenState();
}

class _AddNewCardScreenState extends State<AddNewCardScreen> {
  TextEditingController cardNumberController = TextEditingController();
  CardType cardType = CardType.Invalid;

  void getCardTypeFrmNumber() {
    if (cardNumberController.text.length <= 6) {
      String input = CardUtils.getCleanedNumber(cardNumberController.text);
      CardType type = CardUtils.getCardTypeFrmNumber(input);
      if (type != cardType) {
        setState(() {
          cardType = type;
        });
      }
    }
  }
  @override
  void initState() {
    cardNumberController.addListener(
          () {
        getCardTypeFrmNumber();
      },
    );
    super.initState();
  }
  @override
  void dispose() {
    cardNumberController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.appBarPrefferedHeight),
          child: AppBarWidget(text:'Add New Card')),
      body: SafeArea(
        child: Container(
          color: kLightGrey,
          child: Padding(
            padding: EdgeInsets.only(left:20, right:20,top:20),
            child: Column(
              children: [
                Spacer(),
                Form(
                    child: Column(
                      children: [
                        TextFormField(
                          controller: cardNumberController,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(16),
                            CardNumberInputFormatter(),
                          ],
                          //validator: validateCardNum,
                          decoration: InputDecoration(
                            hintText: "Card Number",
                            hintStyle: kB1BodyText,
                            suffixIcon: Padding(
                              padding: EdgeInsets.all(8),
                              child: CardUtils.getCardIcon(cardType),
                            )
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 16),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintStyle: kB1BodyText,
                              hintText: "Full Name",
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                    LengthLimitingTextInputFormatter(4),
                                  ],
                                  decoration: InputDecoration(
                                    hintText: "CVV",
                                    hintStyle: kB1BodyText,
                                  ),
                                ),
                            ),
                            SizedBox(width: 16,),
                            Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                  LengthLimitingTextInputFormatter(5),
                                  CardMonthInputFormatter(),
                                ],
                                decoration: InputDecoration(
                                  hintText: "MM/YY",
                                  hintStyle: kB1BodyText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                ),
                Spacer(flex: 2,),
                GradientDefaultButton(
                  text: 'Add Card',
                  press: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Body(cardNumber: cardNumberController.text)));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
