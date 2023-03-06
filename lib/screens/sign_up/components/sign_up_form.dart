import 'package:flutter/material.dart';
import 'package:tiffin/widgets/custom_suffix_icon.dart';
import 'package:tiffin/widgets/default_button.dart';
import 'package:tiffin/components/form_error.dart';
import 'package:tiffin/utils/constants.dart';
import 'package:tiffin/screens/complete_profile/complete_profile_screen.dart';
import 'package:tiffin/utils/size_config.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? confirmPassword;
  final List<String> errors=[];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildConfirmPasswordFormField(),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          DefaultButton(
            text: "Continue",
            press: (){
              if(_formKey.currentState!.validate()){
                Navigator.pushNamed(context, CompleteProfileScreen.routeName);
              }
            },
          ),

        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value){
        if(value.isNotEmpty && errors.contains(kEmailNullError)){
          setState(() {
            errors.remove(kEmailNullError);
          });
        }
        else if(emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError)){
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return null;
      },
      validator: (value){
        if(value!.isEmpty && !errors.contains(kEmailNullError)){
          setState(() {
            errors.add(kEmailNullError);
          });
        }
        else if(!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError)){
          setState(() {
            errors.add(kInvalidEmailError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Enter your e-mail",
        labelText: "E-mail",
        floatingLabelBehavior:FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/mail.png",
        ),
      ),
    );
  }
  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          errors.remove(kPassNullError);
        } else if (value.length >= 8) {
          errors.remove(kShortPassError);
        }
        password=value;
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          errors.add(kPassNullError);
          //return "";
        } else if (value.length < 8) {
          errors.add(kShortPassError);
          //return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Enter your password",
        labelText: "Password",
        floatingLabelBehavior:FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/lock.png",
        ),
      ),
    );
  }

  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confirmPassword= newValue!,
      onChanged: (value) {
        if (password == confirmPassword) {
          errors.remove(kMatchPassError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          errors.add(kPassNullError);
          //return "";
        } else if (password != value) {
          errors.add(kMatchPassError);
          //return "";
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: "Confirm password",
        labelText: "Re-enter your Password",
        floatingLabelBehavior:FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/lock.png",
        ),
      ),
    );
  }
}
