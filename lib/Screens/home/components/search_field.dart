import 'package:flutter/material.dart';
import 'package:flutter_proyect7/contains.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _mediaQueryData = MediaQuery.of(context);
    return Container(
      width: _mediaQueryData.size.width * 0.6,
      decoration: BoxDecoration(
        color: kSColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: (value) => print(value),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: (20 / 375.0) * _mediaQueryData.size.width,
                vertical: (9 / 375.0) * _mediaQueryData.size.width),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "Buscar producto",
            prefixIcon: Icon(Icons.search)),
      ),
    );
  }
}
