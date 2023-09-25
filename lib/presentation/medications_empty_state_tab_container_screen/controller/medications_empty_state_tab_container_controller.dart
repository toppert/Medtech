import 'package:medtech/core/app_export.dart';
import 'package:medtech/presentation/medications_empty_state_tab_container_screen/models/medications_empty_state_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MedicationsEmptyStateTabContainerScreen.
///
/// This class manages the state of the MedicationsEmptyStateTabContainerScreen, including the
/// current medicationsEmptyStateTabContainerModelObj
class MedicationsEmptyStateTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<MedicationsEmptyStateTabContainerModel>
      medicationsEmptyStateTabContainerModelObj =
      MedicationsEmptyStateTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
}
