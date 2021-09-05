import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class NavItem {
  final String name;
  final String? url;

  NavItem({
    required this.name,
    this.url,
  });
}

class NavbarController extends GetxController {
  RxInt _selectedIndex = 0.obs;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int get selectedIndex => _selectedIndex.value;
  List<NavItem> get navItems => [
        NavItem(name: "Blog"),
        NavItem(name: "About"),
        NavItem(name: "Contact"),
        NavItem(name: "Portfolio", url: "https://marimon.tech"),
      ];

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  void openOrCloseDrawer() {
    if (_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openEndDrawer();
    } else {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

  void setNavIndex(int index) {
    _selectedIndex.value = index;
  }
}
