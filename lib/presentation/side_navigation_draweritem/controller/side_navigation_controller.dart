import 'package:medtech/core/app_export.dart';
import 'package:medtech/presentation/side_navigation_draweritem/models/side_navigation_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SideNavigationDraweritem.
///
/// This class manages the state of the SideNavigationDraweritem, including the
/// current sideNavigationModelObj
class SideNavigationController extends GetxController {
  TextEditingController patientsvalueController = TextEditingController();

  Rx<SideNavigationModel> sideNavigationModelObj = SideNavigationModel().obs;

  @override
  void onClose() {
    super.onClose();
    patientsvalueController.dispose();
  }
}
