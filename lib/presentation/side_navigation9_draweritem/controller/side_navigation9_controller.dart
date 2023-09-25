import 'package:medtech/core/app_export.dart';
import 'package:medtech/presentation/side_navigation9_draweritem/models/side_navigation9_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SideNavigation9Draweritem.
///
/// This class manages the state of the SideNavigation9Draweritem, including the
/// current sideNavigation9ModelObj
class SideNavigation9Controller extends GetxController {
  TextEditingController appointmentsvalController = TextEditingController();

  Rx<SideNavigation9Model> sideNavigation9ModelObj = SideNavigation9Model().obs;

  @override
  void onClose() {
    super.onClose();
    appointmentsvalController.dispose();
  }
}
