import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/appointments1_screen/models/appointments1_model.dart';import 'package:flutter/material.dart';/// A controller class for the Appointments1Screen.
///
/// This class manages the state of the Appointments1Screen, including the
/// current appointments1ModelObj
class Appointments1Controller extends GetxController {TextEditingController searchController = TextEditingController();

Rx<Appointments1Model> appointments1ModelObj = Appointments1Model().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
