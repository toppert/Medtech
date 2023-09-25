import 'package:medtech/core/app_export.dart';
import 'package:medtech/presentation/side_navigation6_draweritem/models/side_navigation6_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SideNavigation6Draweritem.
///
/// This class manages the state of the SideNavigation6Draweritem, including the
/// current sideNavigation6ModelObj
class SideNavigation6Controller extends GetxController {
  TextEditingController consultationsvaController = TextEditingController();

  Rx<SideNavigation6Model> sideNavigation6ModelObj = SideNavigation6Model().obs;

  @override
  void onClose() {
    super.onClose();
    consultationsvaController.dispose();
  }
}
