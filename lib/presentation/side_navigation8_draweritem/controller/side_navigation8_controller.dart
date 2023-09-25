import 'package:medtech/core/app_export.dart';
import 'package:medtech/presentation/side_navigation8_draweritem/models/side_navigation8_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SideNavigation8Draweritem.
///
/// This class manages the state of the SideNavigation8Draweritem, including the
/// current sideNavigation8ModelObj
class SideNavigation8Controller extends GetxController {
  TextEditingController medicationsvaluController = TextEditingController();

  Rx<SideNavigation8Model> sideNavigation8ModelObj = SideNavigation8Model().obs;

  @override
  void onClose() {
    super.onClose();
    medicationsvaluController.dispose();
  }
}
