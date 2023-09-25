import '../controller/consultations1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Consultations1Screen.
///
/// This class ensures that the Consultations1Controller is created when the
/// Consultations1Screen is first loaded.
class Consultations1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Consultations1Controller());
  }
}
