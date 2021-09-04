import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class NavbarController extends GetxController {
  RxInt _selectedIndex = 0.obs;
  int get selectedIndex => _selectedIndex.value;
  List<String> get navItems => ["Blog", "About", "Contact", "Portfolio"];

  void setNavIndex(int index) {
    _selectedIndex.value = index;
  }
}
