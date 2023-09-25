import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/consultations1_screen/models/consultations1_model.dart';import 'package:flutter/material.dart';/// A controller class for the Consultations1Screen.
///
/// This class manages the state of the Consultations1Screen, including the
/// current consultations1ModelObj
class Consultations1Controller extends GetxController {TextEditingController searchController = TextEditingController();

Rx<Consultations1Model> consultations1ModelObj = Consultations1Model().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
