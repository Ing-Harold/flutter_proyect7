import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_proyect7/Screens/Login/componets/background_login.dart';
import 'package:flutter_proyect7/contains.dart';
import 'package:flutter_proyect7/widgets/widgets.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              onChanged: (value) {},
            ),
            PasswordField(
              onChanged: (value) {},
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
                        Navigator.pushNamed(context, "login");
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
