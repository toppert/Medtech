import '../controller/notifications1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Notifications1Screen.
///
/// This class ensures that the Notifications1Controller is created when the
/// Notifications1Screen is first loaded.
class Notifications1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Notifications1Controller());
  }
}
