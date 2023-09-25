import 'package:medtech/core/app_export.dart';
import 'package:medtech/presentation/consultations_empty_state1_screen/models/consultations_empty_state1_model.dart';

/// A controller class for the ConsultationsEmptyState1Screen.
///
/// This class manages the state of the ConsultationsEmptyState1Screen, including the
/// current consultationsEmptyState1ModelObj
class ConsultationsEmptyState1Controller extends GetxController {
  Rx<ConsultationsEmptyState1Model> consultationsEmptyState1ModelObj =
      ConsultationsEmptyState1Model().obs;
}
