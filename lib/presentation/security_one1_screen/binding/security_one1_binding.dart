import '../controller/security_one1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SecurityOne1Screen.
///
/// This class ensures that the SecurityOne1Controller is created when the
/// SecurityOne1Screen is first loaded.
class SecurityOne1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SecurityOne1Controller());
  }
}
