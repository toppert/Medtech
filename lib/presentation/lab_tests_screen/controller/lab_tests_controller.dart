import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/lab_tests_screen/models/lab_tests_model.dart';import 'package:flutter/material.dart';/// A controller class for the LabTestsScreen.
///
/// This class manages the state of the LabTestsScreen, including the
/// current labTestsModelObj
class LabTestsController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<LabTestsModel> labTestsModelObj = LabTestsModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
