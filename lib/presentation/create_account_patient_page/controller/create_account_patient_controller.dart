import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/create_account_patient_page/models/create_account_patient_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the CreateAccountPatientPage.
///
/// This class manages the state of the CreateAccountPatientPage, including the
/// current createAccountPatientModelObj
class CreateAccountPatientController extends GetxController {CreateAccountPatientController(this.createAccountPatientModelObj);

TextEditingController firstNameController = TextEditingController();

TextEditingController lastNameController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

TextEditingController confirmpasswordController = TextEditingController();

Rx<CreateAccountPatientModel> createAccountPatientModelObj;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('234').obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); firstNameController.dispose(); lastNameController.dispose(); phoneNumberController.dispose(); emailController.dispose(); passwordController.dispose(); confirmpasswordController.dispose(); } 
 }
