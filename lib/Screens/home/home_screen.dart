import 'package:flutter/material.dart';
import 'package:flutter_proyect7/Screens/home/components/body.dart';
import 'package:flutter_proyect7/enums.dart';
import 'package:flutter_proyect7/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
