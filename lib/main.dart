import 'package:appgallobet/pages/login_screen.dart';
import 'package:appgallobet/pages/splash_screen.dart';
import 'package:appgallobet/pages/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: routes,
    ));

var routes = <String, WidgetBuilder>{
  "/welcome": (BuildContext context) => const WelcomeScreen(),
  "/login": (BuildContext context) => const LoginScreen(),
};
