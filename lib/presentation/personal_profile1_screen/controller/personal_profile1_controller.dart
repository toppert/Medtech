import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/personal_profile1_screen/models/personal_profile1_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the PersonalProfile1Screen.
///
/// This class manages the state of the PersonalProfile1Screen, including the
/// current personalProfile1ModelObj
class PersonalProfile1Controller extends GetxController {TextEditingController firstNameController = TextEditingController();

TextEditingController lastNameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

TextEditingController addressController = TextEditingController();

TextEditingController enterController = TextEditingController();

TextEditingController priceController = TextEditingController();

TextEditingController enteroneController = TextEditingController();

TextEditingController entertwoController = TextEditingController();

TextEditingController enterthreeController = TextEditingController();

Rx<PersonalProfile1Model> personalProfile1ModelObj = PersonalProfile1Model().obs;

Rx<String> radioGroup = "".obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('234').obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

SelectionPopupModel? selectedDropDownValue3;

SelectionPopupModel? selectedDropDownValue4;

SelectionPopupModel? selectedDropDownValue5;

@override void onClose() { super.onClose(); firstNameController.dispose(); lastNameController.dispose(); emailController.dispose(); phoneNumberController.dispose(); addressController.dispose(); enterController.dispose(); priceController.dispose(); enteroneController.dispose(); entertwoController.dispose(); enterthreeController.dispose(); } 
onSelected(dynamic value) { for (var element in personalProfile1ModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} personalProfile1ModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in personalProfile1ModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} personalProfile1ModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { for (var element in personalProfile1ModelObj.value.dropdownItemList2.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} personalProfile1ModelObj.value.dropdownItemList2.refresh(); } 
onSelected3(dynamic value) { for (var element in personalProfile1ModelObj.value.dropdownItemList3.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} personalProfile1ModelObj.value.dropdownItemList3.refresh(); } 
onSelected4(dynamic value) { for (var element in personalProfile1ModelObj.value.dropdownItemList4.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} personalProfile1ModelObj.value.dropdownItemList4.refresh(); } 
onSelected5(dynamic value) { for (var element in personalProfile1ModelObj.value.dropdownItemList5.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} personalProfile1ModelObj.value.dropdownItemList5.refresh(); } 
 }
