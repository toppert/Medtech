import '../controller/consultations_empty_state2_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ConsultationsEmptyState2Screen.
///
/// This class ensures that the ConsultationsEmptyState2Controller is created when the
/// ConsultationsEmptyState2Screen is first loaded.
class ConsultationsEmptyState2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConsultationsEmptyState2Controller());
  }
}
