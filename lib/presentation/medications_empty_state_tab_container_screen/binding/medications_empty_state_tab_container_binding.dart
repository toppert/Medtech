import '../controller/medications_empty_state_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MedicationsEmptyStateTabContainerScreen.
///
/// This class ensures that the MedicationsEmptyStateTabContainerController is created when the
/// MedicationsEmptyStateTabContainerScreen is first loaded.
class MedicationsEmptyStateTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MedicationsEmptyStateTabContainerController());
  }
}
