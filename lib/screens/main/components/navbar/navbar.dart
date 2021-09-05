import 'package:flutter/material.dart';
import 'package:flutter_blog/controllers/LaunchUrl.dart';
import 'package:flutter_blog/controllers/NavbarController.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import 'navbar_item.dart';

class Navbar extends StatelessWidget {
  final NavbarController _controller = Get.put(NavbarController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        children: List.generate(
          _controller.navItems.length,
          (index) => NavbarItem(
              text: _controller.navItems[index].name,
              isActive: index == _controller.selectedIndex,
              press: () {
                _controller.setNavIndex(index);
                if (_controller.navItems[index].url != null) {
                  launchURL(_controller.navItems[index].url);
                }
              }),
        ),
      ),
    );
  }
}
