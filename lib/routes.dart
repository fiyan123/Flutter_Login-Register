import 'package:coba/Screens/Login/LoginScreens.dart';
import 'package:coba/Screens/Register/Registrasi.dart';
import 'package:flutter/material.dart';

// Mendaftarkan route
final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  RegisterScreen.routeName: (context) => RegisterScreen()
};
