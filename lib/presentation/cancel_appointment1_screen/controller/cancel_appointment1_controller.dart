import 'package:medtech/core/app_export.dart';
import 'package:medtech/presentation/cancel_appointment1_screen/models/cancel_appointment1_model.dart';

/// A controller class for the CancelAppointment1Screen.
///
/// This class manages the state of the CancelAppointment1Screen, including the
/// current cancelAppointment1ModelObj
class CancelAppointment1Controller extends GetxController {
  Rx<CancelAppointment1Model> cancelAppointment1ModelObj =
      CancelAppointment1Model().obs;
}
