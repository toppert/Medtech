import '../controller/consultations_empty_state1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ConsultationsEmptyState1Screen.
///
/// This class ensures that the ConsultationsEmptyState1Controller is created when the
/// ConsultationsEmptyState1Screen is first loaded.
class ConsultationsEmptyState1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConsultationsEmptyState1Controller());
  }
}
