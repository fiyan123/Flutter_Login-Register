import 'package:coba/Components/Login/LoginComponent.dart';
import 'package:coba/size_config.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  // Route
  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: LoginComponent(),
    );
  }
}
