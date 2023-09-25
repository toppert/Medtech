import 'package:medtech/core/app_export.dart';
import 'package:medtech/presentation/side_navigation1_draweritem/models/side_navigation1_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SideNavigation1Draweritem.
///
/// This class manages the state of the SideNavigation1Draweritem, including the
/// current sideNavigation1ModelObj
class SideNavigation1Controller extends GetxController {
  TextEditingController billingsvalueController = TextEditingController();

  Rx<SideNavigation1Model> sideNavigation1ModelObj = SideNavigation1Model().obs;

  @override
  void onClose() {
    super.onClose();
    billingsvalueController.dispose();
  }
}
