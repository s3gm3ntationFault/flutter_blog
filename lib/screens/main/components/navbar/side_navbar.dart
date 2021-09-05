import 'package:flutter/material.dart';
import 'package:flutter_blog/controllers/NavbarController.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../constraints.dart';

class SideNavbar extends StatelessWidget {
  final NavbarController _controller = Get.put(NavbarController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: kDarkColor,
        child: Obx(
          () => ListView(
            children: [
              DrawerHeader(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding * 3.5,
                  ),
                  child: SvgPicture.asset("icons/logo.svg"),
                ),
              ),
              ...List.generate(
                _controller.navItems.length,
                (index) => DrawerItem(
                  title: _controller.navItems[index],
                  isActive: index == _controller.selectedIndex,
                  press: () {
                    _controller.setNavIndex(index);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback press;

  const DrawerItem({
    Key? key,
    required this.title,
    required this.isActive,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isActive ? kPrimaryColor : Colors.transparent,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        selected: isActive,
        onTap: press,
        title: Text(
          title,
          style: TextStyle(
            color: isActive ? kDarkColor : Colors.white,
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
