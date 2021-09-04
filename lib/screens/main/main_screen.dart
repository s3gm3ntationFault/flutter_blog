import 'package:flutter/material.dart';
import 'package:flutter_blog/constraints.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/navbar.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: kDarkColor,
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(kDefaultPadding),
                    constraints: BoxConstraints(maxWidth: kMaxWidth),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              "icons/logo.svg",
                              width: 35,
                            ),
                            Spacer(),
                            Navbar(),
                            Spacer(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
