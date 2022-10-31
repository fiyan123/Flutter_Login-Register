import 'package:coba/Components/custom_surfix_icon.dart';
import 'package:coba/Components/default_button_custome_color.dart';
import 'package:coba/Screens/Login/LoginScreens.dart';
import 'package:coba/Screens/Register/Registrasi.dart';
import 'package:coba/size_config.dart';
import 'package:coba/utils/constants.dart';
import 'package:flutter/material.dart';

class SignUpform extends StatefulWidget {
  @override
  _SignUpForm createState() => _SignUpForm();
}

class _SignUpForm extends State<SignUpform> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? username;
  String? password;
  bool? remeber = false;

  // Menampung Inputan mirip variable
  TextEditingController txtUserName = TextEditingController(),
      txtPassword = TextEditingController(),
      txtEmail = TextEditingController();

  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // Pemanggilan Form
          buildUserName(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildEmail(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPassword(),
          SizedBox(height: getProportionateScreenHeight(30)),

          DefaultButtonCustomeColor(
            color: mCardTitleColor,
            text: "REGISTRASI",
            press: () {},
          ),
          SizedBox(
            height: 20,
          ),
          // back to login
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, LoginScreen.routeName);
            },
            child: Text(
              "Sudah Punya Akun ? Masuk Kesini",
            ),
          )
        ],
      ),
    );
  }

  // Kolom Input Username Form
  TextFormField buildUserName() {
    return TextFormField(
      controller: txtUserName,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Username',
        hintText: 'Masukkan Username Disini',
        labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/User.svg",
        ),
      ),
    );
  }

  // Kolom input email
  TextFormField buildEmail() {
    return TextFormField(
      controller: txtUserName,
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Masukkan Email Disini',
        labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/User.svg",
        ),
      ),
    );
  }

  // Kolom Input Password Form
  TextFormField buildPassword() {
    return TextFormField(
      controller: txtPassword,
      obscureText: true, // Membuat Text menjadi tidak terlihat
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Masukkan Password Disini',
        labelStyle: TextStyle(
            color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/User.svg",
        ),
      ),
    );
  }
}
