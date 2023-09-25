import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/security1_screen/models/security1_model.dart';import 'package:flutter/material.dart';/// A controller class for the Security1Screen.
///
/// This class manages the state of the Security1Screen, including the
/// current security1ModelObj
class Security1Controller extends GetxController {TextEditingController emailController = TextEditingController();

Rx<Security1Model> security1ModelObj = Security1Model().obs;

Rx<bool> isSelectedSwitch = false.obs;

@override void onClose() { super.onClose(); emailController.dispose(); } 
 }
