import '../controller/security1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Security1Screen.
///
/// This class ensures that the Security1Controller is created when the
/// Security1Screen is first loaded.
class Security1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Security1Controller());
  }
}
