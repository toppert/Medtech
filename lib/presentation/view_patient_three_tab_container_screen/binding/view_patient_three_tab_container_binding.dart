import '../controller/view_patient_three_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ViewPatientThreeTabContainerScreen.
///
/// This class ensures that the ViewPatientThreeTabContainerController is created when the
/// ViewPatientThreeTabContainerScreen is first loaded.
class ViewPatientThreeTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ViewPatientThreeTabContainerController());
  }
}
