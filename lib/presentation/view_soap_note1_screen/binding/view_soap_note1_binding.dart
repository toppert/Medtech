import '../controller/view_soap_note1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ViewSoapNote1Screen.
///
/// This class ensures that the ViewSoapNote1Controller is created when the
/// ViewSoapNote1Screen is first loaded.
class ViewSoapNote1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ViewSoapNote1Controller());
  }
}
