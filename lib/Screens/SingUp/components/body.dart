import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_proyect7/Screens/SingUp/components/background_signup.dart';
import 'package:flutter_proyect7/contains.dart';
import 'package:flutter_proyect7/widgets/widgets.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controllerUserEmail = new TextEditingController();
    TextEditingController controllerUsersPass = new TextEditingController();
    Size size = MediaQuery.of(context).size;
    return BackgroundSingUp(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGN UP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              'assets/images/FICCT.png',
              width: size.width * 0.45,
            ),
            // SvgPicture.asset(
            //   "assets/icons/signup.svg",
            //   height: size.height * 0.35,
            // ),
            SizedBox(height: size.height * 0.03),
            loginInputField(
              hintText: "Tu email",
              icon: Icons.person,
              controller: controllerUserEmail,
            ),
            PasswordField(
              controller: controllerUsersPass,
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
                        "SIGN UP",
                        style: TextStyle(color: Colors.white),
                      ))),
            ),
            SizedBox(height: size.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "¿Ya tienes una cuenta ? ",
                  style: TextStyle(
                    color: kPrimaryColor,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "login");
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: kPrimaryColor, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "login");
                  },
                  child: RedesIcon(
                    icons: "assets/icons/facebook.svg",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "signup");
                  },
                  child: RedesIcon(
                    icons: "assets/icons/twitter.svg",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "login");
                  },
                  child: RedesIcon(
                    icons: "assets/icons/google-plus.svg",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RedesIcon extends StatelessWidget {
  final String icons;
  const RedesIcon({
    Key? key,
    required this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: kPrimaryLightColor,
        ),
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(
        icons,
        height: 20,
        width: 20,
      ),
    );
  }
}

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: Row(
        children: <Widget>[
          buildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Or",
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          buildDivider(),
        ],
      ),
    );
  }

  Expanded buildDivider() {
    return Expanded(
      child: Divider(
        color: kPrimaryColor,
        height: 1.5,
      ),
    );
  }
}
