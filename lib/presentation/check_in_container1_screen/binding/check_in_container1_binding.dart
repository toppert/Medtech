import '../controller/check_in_container1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CheckInContainer1Screen.
///
/// This class ensures that the CheckInContainer1Controller is created when the
/// CheckInContainer1Screen is first loaded.
class CheckInContainer1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckInContainer1Controller());
  }
}
