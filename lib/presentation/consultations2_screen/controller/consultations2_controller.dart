import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/consultations2_screen/models/consultations2_model.dart';import 'package:flutter/material.dart';/// A controller class for the Consultations2Screen.
///
/// This class manages the state of the Consultations2Screen, including the
/// current consultations2ModelObj
class Consultations2Controller extends GetxController {TextEditingController searchController = TextEditingController();

Rx<Consultations2Model> consultations2ModelObj = Consultations2Model().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
