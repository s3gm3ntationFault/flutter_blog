import 'package:flutter/material.dart';
import 'package:flutter_blog/constraints.dart';
import 'package:flutter_blog/screens/home/home_screen.dart';

import 'components/header.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: HomeScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
