import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/security_two1_screen/models/security_two1_model.dart';/// A controller class for the SecurityTwo1Screen.
///
/// This class manages the state of the SecurityTwo1Screen, including the
/// current securityTwo1ModelObj
class SecurityTwo1Controller extends GetxController {Rx<SecurityTwo1Model> securityTwo1ModelObj = SecurityTwo1Model().obs;

Rx<bool> user = false.obs;

 }
