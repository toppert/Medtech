import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/health_profile_screen/models/health_profile_model.dart';import 'package:flutter/material.dart';/// A controller class for the HealthProfileScreen.
///
/// This class manages the state of the HealthProfileScreen, including the
/// current healthProfileModelObj
class HealthProfileController extends GetxController {TextEditingController enterController = TextEditingController();

TextEditingController enteroneController = TextEditingController();

TextEditingController entertwoController = TextEditingController();

TextEditingController nameController = TextEditingController();

TextEditingController checkmarkController = TextEditingController();

TextEditingController enterthreeController = TextEditingController();

TextEditingController checkmarkoneController = TextEditingController();

TextEditingController enterfourController = TextEditingController();

Rx<HealthProfileModel> healthProfileModelObj = HealthProfileModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); enterController.dispose(); enteroneController.dispose(); entertwoController.dispose(); nameController.dispose(); checkmarkController.dispose(); enterthreeController.dispose(); checkmarkoneController.dispose(); enterfourController.dispose(); } 
onSelected(dynamic value) { for (var element in healthProfileModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} healthProfileModelObj.value.dropdownItemList.refresh(); } 
 }
