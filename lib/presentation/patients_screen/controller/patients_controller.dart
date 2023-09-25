import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/patients_screen/models/patients_model.dart';import 'package:flutter/material.dart';/// A controller class for the PatientsScreen.
///
/// This class manages the state of the PatientsScreen, including the
/// current patientsModelObj
class PatientsController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<PatientsModel> patientsModelObj = PatientsModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
