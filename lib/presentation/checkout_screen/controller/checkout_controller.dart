import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/checkout_screen/models/checkout_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the CheckoutScreen.
///
/// This class manages the state of the CheckoutScreen, including the
/// current checkoutModelObj
class CheckoutController extends GetxController {TextEditingController firstNameController = TextEditingController();

TextEditingController lastNameController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController addressController = TextEditingController();

Rx<CheckoutModel> checkoutModelObj = CheckoutModel().obs;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('234').obs;

Rx<bool> saveaspreferred = false.obs;

SelectionPopupModel? selectedDropDownValue;

SelectionPopupModel? selectedDropDownValue1;

@override void onClose() { super.onClose(); firstNameController.dispose(); lastNameController.dispose(); phoneNumberController.dispose(); emailController.dispose(); addressController.dispose(); } 
onSelected(dynamic value) { for (var element in checkoutModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} checkoutModelObj.value.dropdownItemList.refresh(); } 
onSelected1(dynamic value) { for (var element in checkoutModelObj.value.dropdownItemList1.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} checkoutModelObj.value.dropdownItemList1.refresh(); } 
 }
