import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/edit_soap_note1_screen/models/edit_soap_note1_model.dart';import 'package:flutter/material.dart';/// A controller class for the EditSoapNote1Screen.
///
/// This class manages the state of the EditSoapNote1Screen, including the
/// current editSoapNote1ModelObj
class EditSoapNote1Controller extends GetxController {TextEditingController fullNameController = TextEditingController();

TextEditingController genderController = TextEditingController();

TextEditingController dateController = TextEditingController();

TextEditingController descriptionController = TextEditingController();

TextEditingController descriptionController1 = TextEditingController();

TextEditingController diagnosisvalueController = TextEditingController();

TextEditingController treatmentvalueController = TextEditingController();

TextEditingController medicationvalueController = TextEditingController();

TextEditingController frame229Controller = TextEditingController();

TextEditingController frame229oneController = TextEditingController();

Rx<EditSoapNote1Model> editSoapNote1ModelObj = EditSoapNote1Model().obs;

@override void onClose() { super.onClose(); fullNameController.dispose(); genderController.dispose(); dateController.dispose(); descriptionController.dispose(); descriptionController1.dispose(); diagnosisvalueController.dispose(); treatmentvalueController.dispose(); medicationvalueController.dispose(); frame229Controller.dispose(); frame229oneController.dispose(); } 
 }
