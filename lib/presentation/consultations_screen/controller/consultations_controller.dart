import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/consultations_screen/models/consultations_model.dart';import 'package:flutter/material.dart';/// A controller class for the ConsultationsScreen.
///
/// This class manages the state of the ConsultationsScreen, including the
/// current consultationsModelObj
class ConsultationsController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<ConsultationsModel> consultationsModelObj = ConsultationsModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
