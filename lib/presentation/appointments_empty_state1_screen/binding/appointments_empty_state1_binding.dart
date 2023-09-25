import '../controller/appointments_empty_state1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AppointmentsEmptyState1Screen.
///
/// This class ensures that the AppointmentsEmptyState1Controller is created when the
/// AppointmentsEmptyState1Screen is first loaded.
class AppointmentsEmptyState1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppointmentsEmptyState1Controller());
  }
}
