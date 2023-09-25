import 'package:medtech/core/app_export.dart';
import 'package:medtech/presentation/side_navigation4_draweritem/models/side_navigation4_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SideNavigation4Draweritem.
///
/// This class manages the state of the SideNavigation4Draweritem, including the
/// current sideNavigation4ModelObj
class SideNavigation4Controller extends GetxController {
  TextEditingController labtestsoneController = TextEditingController();

  Rx<SideNavigation4Model> sideNavigation4ModelObj = SideNavigation4Model().obs;

  @override
  void onClose() {
    super.onClose();
    labtestsoneController.dispose();
  }
}
