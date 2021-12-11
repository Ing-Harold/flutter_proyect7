import 'package:flutter/material.dart';
import 'package:flutter_proyect7/contains.dart';

class ModelButton extends StatelessWidget {
  final String text;
  final Function presionar;
  final Color colorf, textColor;
  const ModelButton({
    Key? key,
    required this.text,
    required this.presionar,
    this.colorf = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

//no usar esta con errors hacerlo mecanico nomas copiar y pegar
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: size.width * 0.8,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(29),
          child: MaterialButton(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              disabledColor: colorf,
              onPressed: presionar(),
              child: Text(
                text,
                style: TextStyle(color: textColor),
              ))),
    );
  }
}
