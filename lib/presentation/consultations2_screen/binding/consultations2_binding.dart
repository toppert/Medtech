import '../controller/consultations2_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Consultations2Screen.
///
/// This class ensures that the Consultations2Controller is created when the
/// Consultations2Screen is first loaded.
class Consultations2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Consultations2Controller());
  }
}
