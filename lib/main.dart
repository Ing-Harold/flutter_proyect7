import 'package:flutter/material.dart';
import 'package:flutter_proyect7/Screens/screens.dart';
import 'package:flutter_proyect7/contains.dart';
import 'package:http/http.dart' as http;

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
        'menu': (_) => MenuScreen(),
      },
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   TextEditingController controllerUser = new TextEditingController();
//   TextEditingController controllerPass = new TextEditingController();

//   String mensaje = '';
//   Future<List> login() async {
//     final response = await http.post("http://localhost/flutter_proyect7/getUsers.php", body: {
//       "username": controllerUser.text,
//       "password": controllerPass.text,
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // resizeToAvoidBottomInset: false,
//         // body
//         );
//   }
// }
