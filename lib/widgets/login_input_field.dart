import 'package:flutter/material.dart';
import 'package:flutter_proyect7/contains.dart';
import 'package:flutter_proyect7/widgets/text_field_container.dart';

class loginInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  const loginInputField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          icon: Icon(icon, color: kPrimaryColor),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
