import '../controller/account_settings1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AccountSettings1Screen.
///
/// This class ensures that the AccountSettings1Controller is created when the
/// AccountSettings1Screen is first loaded.
class AccountSettings1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountSettings1Controller());
  }
}
