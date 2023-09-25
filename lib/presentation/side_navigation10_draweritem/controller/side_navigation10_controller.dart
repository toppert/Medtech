import 'package:medtech/core/app_export.dart';
import 'package:medtech/presentation/side_navigation10_draweritem/models/side_navigation10_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SideNavigation10Draweritem.
///
/// This class manages the state of the SideNavigation10Draweritem, including the
/// current sideNavigation10ModelObj
class SideNavigation10Controller extends GetxController {
  TextEditingController accountsettingsController = TextEditingController();

  Rx<SideNavigation10Model> sideNavigation10ModelObj =
      SideNavigation10Model().obs;

  @override
  void onClose() {
    super.onClose();
    accountsettingsController.dispose();
  }
}
