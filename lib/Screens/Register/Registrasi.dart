import 'package:coba/Components/Register/RegisterComponent.dart';
import 'package:coba/size_config.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  // Route
  static String routeName = "/sign_up";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: RegisterComponent(),
    );
  }
}
