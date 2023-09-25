import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/personal_profile_screen/models/personal_profile_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the PersonalProfileScreen.
///
/// This class manages the state of the PersonalProfileScreen, including the
/// current personalProfileModelObj
class PersonalProfileController extends GetxController {TextEditingController firstNameController = TextEditingController();

TextEditingController lastNameController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController addressController = TextEditingController();

Rx<PersonalProfileModel> personalProfileModelObj = PersonalProfileModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('234').obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

SelectionPopupModel? selectedDropDownValue2;

SelectionPopupModel? selectedDropDownValue3;

@override void onClose() { super.onClose(); firstNameController.dispose(); lastNameController.dispose(); phoneNumberController.dispose(); emailController.dispose(); addressController.dispose(); } 
onSelected(dynamic value) { for (var element in personalProfileModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} personalProfileModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in personalProfileModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} personalProfileModelObj.value.dropdownItemList1.refresh(); } 
onSelected2(dynamic value) { for (var element in personalProfileModelObj.value.dropdownItemList2.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} personalProfileModelObj.value.dropdownItemList2.refresh(); } 
onSelected3(dynamic value) { for (var element in personalProfileModelObj.value.dropdownItemList3.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} personalProfileModelObj.value.dropdownItemList3.refresh(); } 
 }
