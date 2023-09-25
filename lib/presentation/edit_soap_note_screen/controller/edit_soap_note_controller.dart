import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/edit_soap_note_screen/models/edit_soap_note_model.dart';import 'package:flutter/material.dart';/// A controller class for the EditSoapNoteScreen.
///
/// This class manages the state of the EditSoapNoteScreen, including the
/// current editSoapNoteModelObj
class EditSoapNoteController extends GetxController {TextEditingController fullNameController = TextEditingController();

TextEditingController genderController = TextEditingController();

TextEditingController dateController = TextEditingController();

TextEditingController descriptionController = TextEditingController();

TextEditingController descriptionController1 = TextEditingController();

TextEditingController diagnosisvalueController = TextEditingController();

TextEditingController treatmentvalueController = TextEditingController();

TextEditingController medicationvalueController = TextEditingController();

TextEditingController frame229Controller = TextEditingController();

TextEditingController frame229oneController = TextEditingController();

Rx<EditSoapNoteModel> editSoapNoteModelObj = EditSoapNoteModel().obs;

@override void onClose() { super.onClose(); fullNameController.dispose(); genderController.dispose(); dateController.dispose(); descriptionController.dispose(); descriptionController1.dispose(); diagnosisvalueController.dispose(); treatmentvalueController.dispose(); medicationvalueController.dispose(); frame229Controller.dispose(); frame229oneController.dispose(); } 
 }
