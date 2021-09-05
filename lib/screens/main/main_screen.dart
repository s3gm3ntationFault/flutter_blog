import 'package:flutter/material.dart';
import 'package:flutter_blog/constraints.dart';
import 'package:flutter_blog/controllers/NavbarController.dart';
import 'package:flutter_blog/screens/home/home_screen.dart';
import 'package:get/get.dart';

import 'components/header.dart';
import 'components/navbar/side_navbar.dart';

class MainScreen extends StatelessWidget {
  final NavbarController _controller = Get.put(NavbarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldKey,
      drawer: SideNavbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: SafeArea(child: HomeScreen()),
            ),
          ],
        ),
      ),
    );
  }
}
