import 'package:medtech/core/app_export.dart';
import 'package:medtech/presentation/side_navigation3_draweritem/models/side_navigation3_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SideNavigation3Draweritem.
///
/// This class manages the state of the SideNavigation3Draweritem, including the
/// current sideNavigation3ModelObj
class SideNavigation3Controller extends GetxController {
  TextEditingController ratingsvalueController = TextEditingController();

  Rx<SideNavigation3Model> sideNavigation3ModelObj = SideNavigation3Model().obs;

  @override
  void onClose() {
    super.onClose();
    ratingsvalueController.dispose();
  }
}
