import '../controller/cancel_appointment1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CancelAppointment1Screen.
///
/// This class ensures that the CancelAppointment1Controller is created when the
/// CancelAppointment1Screen is first loaded.
class CancelAppointment1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CancelAppointment1Controller());
  }
}
