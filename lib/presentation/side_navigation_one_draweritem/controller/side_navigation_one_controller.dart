import 'package:medtech/core/app_export.dart';
import 'package:medtech/presentation/side_navigation_one_draweritem/models/side_navigation_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SideNavigationOneDraweritem.
///
/// This class manages the state of the SideNavigationOneDraweritem, including the
/// current sideNavigationOneModelObj
class SideNavigationOneController extends GetxController {
  TextEditingController consultationsvaController = TextEditingController();

  Rx<SideNavigationOneModel> sideNavigationOneModelObj =
      SideNavigationOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    consultationsvaController.dispose();
  }
}
