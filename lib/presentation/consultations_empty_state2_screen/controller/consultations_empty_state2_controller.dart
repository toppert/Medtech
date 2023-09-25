import 'package:medtech/core/app_export.dart';
import 'package:medtech/presentation/consultations_empty_state2_screen/models/consultations_empty_state2_model.dart';

/// A controller class for the ConsultationsEmptyState2Screen.
///
/// This class manages the state of the ConsultationsEmptyState2Screen, including the
/// current consultationsEmptyState2ModelObj
class ConsultationsEmptyState2Controller extends GetxController {
  Rx<ConsultationsEmptyState2Model> consultationsEmptyState2ModelObj =
      ConsultationsEmptyState2Model().obs;
}
