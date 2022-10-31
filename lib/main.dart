import 'package:coba/Screens/Login/LoginScreens.dart';
import 'package:coba/routes.dart';
import 'package:coba/theme.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(
    MaterialApp(
      title: "Penilaian Akademik Siswa",
      theme: theme(),
      initialRoute: LoginScreen.routeName,
      routes: routes,
    ),
  );
}
