import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/security_two_screen/models/security_two_model.dart';import 'package:flutter/material.dart';/// A controller class for the SecurityTwoScreen.
///
/// This class manages the state of the SecurityTwoScreen, including the
/// current securityTwoModelObj
class SecurityTwoController extends GetxController {TextEditingController emailController = TextEditingController();

Rx<SecurityTwoModel> securityTwoModelObj = SecurityTwoModel().obs;

Rx<bool> isSelectedSwitch = false.obs;

@override void onClose() { super.onClose(); emailController.dispose(); } 
 }
