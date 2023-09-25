import '../controller/payment_successful1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentSuccessful1Screen.
///
/// This class ensures that the PaymentSuccessful1Controller is created when the
/// PaymentSuccessful1Screen is first loaded.
class PaymentSuccessful1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentSuccessful1Controller());
  }
}
