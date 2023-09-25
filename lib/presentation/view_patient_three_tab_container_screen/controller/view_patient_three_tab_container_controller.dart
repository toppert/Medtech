import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/view_patient_three_tab_container_screen/models/view_patient_three_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the ViewPatientThreeTabContainerScreen.
///
/// This class manages the state of the ViewPatientThreeTabContainerScreen, including the
/// current viewPatientThreeTabContainerModelObj
class ViewPatientThreeTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<ViewPatientThreeTabContainerModel> viewPatientThreeTabContainerModelObj = ViewPatientThreeTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 4));

 }
