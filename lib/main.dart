import 'package:flutter/material.dart';
import 'package:flutter_proyect7/Screens/screens.dart';
import 'package:flutter_proyect7/contains.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SI2 PROYECT',
      initialRoute: 'welcome',
      routes: {
        'welcome': (_) => WelcomeScreen(),
        'login': (_) => LoginScreen(),
        'signup': (_) => SignUpScreen(),
      },
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
