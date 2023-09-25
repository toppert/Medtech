import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/security_one1_screen/models/security_one1_model.dart';import 'package:flutter/material.dart';/// A controller class for the SecurityOne1Screen.
///
/// This class manages the state of the SecurityOne1Screen, including the
/// current securityOne1ModelObj
class SecurityOne1Controller extends GetxController {TextEditingController passwordController = TextEditingController();

TextEditingController newpasswordController = TextEditingController();

TextEditingController confirmpasswordController = TextEditingController();

Rx<SecurityOne1Model> securityOne1ModelObj = SecurityOne1Model().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> isShowPassword1 = true.obs;

@override void onClose() { super.onClose(); passwordController.dispose(); newpasswordController.dispose(); confirmpasswordController.dispose(); } 
 }
