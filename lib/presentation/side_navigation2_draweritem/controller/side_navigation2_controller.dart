import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/side_navigation2_draweritem/models/side_navigation2_model.dart';import 'package:flutter/material.dart';/// A controller class for the SideNavigation2Draweritem.
///
/// This class manages the state of the SideNavigation2Draweritem, including the
/// current sideNavigation2ModelObj
class SideNavigation2Controller extends GetxController {TextEditingController accountsettingsController = TextEditingController();

Rx<SideNavigation2Model> sideNavigation2ModelObj = SideNavigation2Model().obs;

@override void onClose() { super.onClose(); accountsettingsController.dispose(); } 
 }
