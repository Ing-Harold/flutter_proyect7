import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_proyect7/Screens/Welcome/components/background.dart';
import 'package:flutter_proyect7/contains.dart';
import 'package:flutter_proyect7/widgets/widgets.dart';
import 'package:flutter_proyect7/Screens/screens.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //este tamaño nos proporciona la altura y el ancho total de nuestra pantalla
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welocme TO CRM ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              'assets/images/uagrm.jpg',
              width: size.width * 0.6,
            ),
            // SvgPicture.asset(
            //   "assets/icons/FICCT2.svg",
            //   height: size.height * 0.45,
            // ),
            SizedBox(height: size.height * 0.05),
            //aca creo el boton de los huevos super codigo para crear un boton
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
            //esta clase que no me salio al crrear un boton de los huevos
            // ModelButton(
            //   text: "LOGIN",
            //   colorf: kPrimaryColor,
            //   textColor: Colors.black,
            //   presionar: () {
            //     // Navigator.pushNamed(context, "login");
            //   }
            //   // Navigator.push(
            //   //   context,
            //   //   MaterialPageRoute(builder: (context) => LoginScreen()),
            //   // );

            //   ,
            // ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              width: size.width * 0.8,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(29),
                  child: MaterialButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      color: kPrimaryLightColor, //kPrimaryColor,
                      onPressed: () {
                        Navigator.pushNamed(context, "signup");
                      },
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(color: Colors.black),
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}
