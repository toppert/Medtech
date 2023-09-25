import 'package:medtech/core/app_export.dart';
import 'package:medtech/presentation/appointments_empty_state1_screen/models/appointments_empty_state1_model.dart';

/// A controller class for the AppointmentsEmptyState1Screen.
///
/// This class manages the state of the AppointmentsEmptyState1Screen, including the
/// current appointmentsEmptyState1ModelObj
class AppointmentsEmptyState1Controller extends GetxController {
  Rx<AppointmentsEmptyState1Model> appointmentsEmptyState1ModelObj =
      AppointmentsEmptyState1Model().obs;
}
