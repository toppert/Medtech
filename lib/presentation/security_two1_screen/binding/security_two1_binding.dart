import '../controller/security_two1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SecurityTwo1Screen.
///
/// This class ensures that the SecurityTwo1Controller is created when the
/// SecurityTwo1Screen is first loaded.
class SecurityTwo1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SecurityTwo1Controller());
  }
}
