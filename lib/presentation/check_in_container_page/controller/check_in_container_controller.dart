import 'package:medtech/core/app_export.dart';
import 'package:medtech/presentation/check_in_container_page/models/check_in_container_model.dart';

/// A controller class for the CheckInContainerPage.
///
/// This class manages the state of the CheckInContainerPage, including the
/// current checkInContainerModelObj
class CheckInContainerController extends GetxController {
  CheckInContainerController(this.checkInContainerModelObj);

  Rx<CheckInContainerModel> checkInContainerModelObj;
}
