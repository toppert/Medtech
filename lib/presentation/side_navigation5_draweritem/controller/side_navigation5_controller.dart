import 'package:medtech/core/app_export.dart';
import 'package:medtech/presentation/side_navigation5_draweritem/models/side_navigation5_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SideNavigation5Draweritem.
///
/// This class manages the state of the SideNavigation5Draweritem, including the
/// current sideNavigation5ModelObj
class SideNavigation5Controller extends GetxController {
  TextEditingController consultationsvaController = TextEditingController();

  Rx<SideNavigation5Model> sideNavigation5ModelObj = SideNavigation5Model().obs;

  @override
  void onClose() {
    super.onClose();
    consultationsvaController.dispose();
  }
}
