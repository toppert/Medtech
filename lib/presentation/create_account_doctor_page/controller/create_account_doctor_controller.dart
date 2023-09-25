import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/create_account_doctor_page/models/create_account_doctor_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:flutter/material.dart';/// A controller class for the CreateAccountDoctorPage.
///
/// This class manages the state of the CreateAccountDoctorPage, including the
/// current createAccountDoctorModelObj
class CreateAccountDoctorController extends GetxController {CreateAccountDoctorController(this.createAccountDoctorModelObj);

TextEditingController firstNameController = TextEditingController();

TextEditingController lastNameController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

TextEditingController confirmpasswordController = TextEditingController();

Rx<CreateAccountDoctorModel> createAccountDoctorModelObj;

Rx<Country> selectedCountry = CountryPickerUtils.getCountryByPhoneCode('234').obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); firstNameController.dispose(); lastNameController.dispose(); phoneNumberController.dispose(); emailController.dispose(); passwordController.dispose(); confirmpasswordController.dispose(); } 
 }
