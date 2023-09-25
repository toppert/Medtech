import '../controller/appointments1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Appointments1Screen.
///
/// This class ensures that the Appointments1Controller is created when the
/// Appointments1Screen is first loaded.
class Appointments1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Appointments1Controller());
  }
}
