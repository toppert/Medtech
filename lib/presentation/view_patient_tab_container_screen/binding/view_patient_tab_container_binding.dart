import '../controller/view_patient_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ViewPatientTabContainerScreen.
///
/// This class ensures that the ViewPatientTabContainerController is created when the
/// ViewPatientTabContainerScreen is first loaded.
class ViewPatientTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ViewPatientTabContainerController());
  }
}
