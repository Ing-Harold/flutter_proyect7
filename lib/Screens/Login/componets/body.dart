import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_proyect7/Screens/Login/componets/background_login.dart';
import 'package:flutter_proyect7/contains.dart';
import 'package:flutter_proyect7/widgets/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:convert';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController userEmail = new TextEditingController();
    TextEditingController userPassword = new TextEditingController();

    Future login(BuildContext cont) async {
      if (userEmail == "" || userPassword == "") {
        Fluttertoast.showToast(
          msg: "Usuario o contraseña incoreccta",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          fontSize: 16.0,
        );
      } else {
        var url = Uri.parse("http://localhost/flutter_proyect7/UsersLogin.php");

        var response = await http.post(url, body: {
          "userEmail": userEmail.text,
          "userPassword": userPassword.text,
        });

        var data = json.decode(response.body);
        if (data == "sucess") {
          Navigator.pushNamed(cont, "menu");
        } else {
          Fluttertoast.showToast(
            msg: "Usuario o contraseña incoreccta",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            fontSize: 16.0,
          );
        }
      }
    }

    Size size = MediaQuery.of(context).size;
    //llame al modelo de mi fondo donde tengo las imagenes
    return Background_login(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              'assets/images/FICCT.png',
              width: size.width * 0.45,
            ),
            // SvgPicture.asset(
            //   "assets/icons/login.svg",
            //   height: size.height * 0.35,
            // ),
            SizedBox(height: size.height * 0.03),
            loginInputField(
              hintText: "Tu email",
              icon: Icons.person,
              controller: userEmail,
            ),
            PasswordField(
              controller: userPassword,
            ),
            // de nuevo aca el botonazo por que no me slaio el modelo del boton
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              width: size.width * 0.8,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(29),
                  child: MaterialButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      color: Color(0xFF6F35A5), //kPrimaryColor,
                      onPressed: () {
                        login(context);
                      },
                      child: Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white),
                      ))),
            ),
            SizedBox(height: size.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "¿No tienes aun cuenta ? ",
                  style: TextStyle(
                    color: kPrimaryColor,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "signup");
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: kPrimaryColor, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
