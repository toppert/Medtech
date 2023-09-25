import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/notifications1_screen/models/notifications1_model.dart';/// A controller class for the Notifications1Screen.
///
/// This class manages the state of the Notifications1Screen, including the
/// current notifications1ModelObj
class Notifications1Controller extends GetxController {Rx<Notifications1Model> notifications1ModelObj = Notifications1Model().obs;

Rx<bool> isSelectedSwitch = false.obs;

Rx<bool> isSelectedSwitch1 = false.obs;

Rx<bool> isSelectedSwitch2 = false.obs;

Rx<bool> isSelectedSwitch3 = false.obs;

Rx<bool> isSelectedSwitch4 = false.obs;

 }
