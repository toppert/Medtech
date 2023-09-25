import 'package:medtech/core/app_export.dart';
import 'package:medtech/presentation/side_navigation7_draweritem/models/side_navigation7_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SideNavigation7Draweritem.
///
/// This class manages the state of the SideNavigation7Draweritem, including the
/// current sideNavigation7ModelObj
class SideNavigation7Controller extends GetxController {
  TextEditingController pharmacyvalueController = TextEditingController();

  Rx<SideNavigation7Model> sideNavigation7ModelObj = SideNavigation7Model().obs;

  @override
  void onClose() {
    super.onClose();
    pharmacyvalueController.dispose();
  }
}
