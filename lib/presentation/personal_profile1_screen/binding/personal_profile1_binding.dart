import '../controller/personal_profile1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PersonalProfile1Screen.
///
/// This class ensures that the PersonalProfile1Controller is created when the
/// PersonalProfile1Screen is first loaded.
class PersonalProfile1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PersonalProfile1Controller());
  }
}
