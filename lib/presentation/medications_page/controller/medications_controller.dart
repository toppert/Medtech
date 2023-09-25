import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/medications_page/models/medications_model.dart';import 'package:flutter/material.dart';import 'package:flutter/material.dart';/// A controller class for the MedicationsPage.
///
/// This class manages the state of the MedicationsPage, including the
/// current medicationsModelObj
class MedicationsController extends GetxController {MedicationsController(this.medicationsModelObj);

TextEditingController searchController = TextEditingController();

Rx<MedicationsModel> medicationsModelObj;

@override void onClose() { super.onClose(); searchController.dispose();medicationsModelObj.value.medicationsItemList.value.forEach((element) {element.tabletsCounterController.dispose();element.twohundredtwentController.dispose();element.durationController.dispose();});
 } 
 }
