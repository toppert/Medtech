import '../controller/edit_soap_note1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EditSoapNote1Screen.
///
/// This class ensures that the EditSoapNote1Controller is created when the
/// EditSoapNote1Screen is first loaded.
class EditSoapNote1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditSoapNote1Controller());
  }
}
