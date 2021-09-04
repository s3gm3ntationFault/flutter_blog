import 'package:flutter/material.dart';
import 'package:flutter_blog/controllers/NavbarController.dart';
import 'package:get/get.dart';

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
          text: _controller.navItems[index],
          isActive: index == _controller.selectedIndex,
          press: () => _controller.setNavIndex(index),
        ),
      )),
    );
  }
}
