import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/view_patient_tab_container_screen/models/view_patient_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the ViewPatientTabContainerScreen.
///
/// This class manages the state of the ViewPatientTabContainerScreen, including the
/// current viewPatientTabContainerModelObj
class ViewPatientTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<ViewPatientTabContainerModel> viewPatientTabContainerModelObj = ViewPatientTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 4));

 }
