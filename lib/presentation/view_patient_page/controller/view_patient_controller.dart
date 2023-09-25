import 'package:medtech/core/app_export.dart';
import 'package:medtech/presentation/view_patient_page/models/view_patient_model.dart';

/// A controller class for the ViewPatientPage.
///
/// This class manages the state of the ViewPatientPage, including the
/// current viewPatientModelObj
class ViewPatientController extends GetxController {
  ViewPatientController(this.viewPatientModelObj);

  Rx<ViewPatientModel> viewPatientModelObj;
}
