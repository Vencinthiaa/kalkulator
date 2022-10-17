import 'package:flutter/material.dart';
import 'package:peminjamanmobil/Kalkulator.dart';
import 'package:peminjamanmobil/Login.dart';
import 'package:peminjamanmobil/Register.dart';
import 'package:peminjamanmobil/Splash.dart';
import 'package:peminjamanmobil/Splashscreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => Splash(),
      "/splashscreen": (context) => Splashscreen(),
      "/login": (context) => Login(),
      "/register": (context) => Register(),
      "/Kalkulator":(context) => Kalkulator(),
    },
  ));
}
