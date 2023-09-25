import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/fund_wallet_one_screen/models/fund_wallet_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the FundWalletOneScreen.
///
/// This class manages the state of the FundWalletOneScreen, including the
/// current fundWalletOneModelObj
class FundWalletOneController extends GetxController {TextEditingController amountController = TextEditingController();

Rx<FundWalletOneModel> fundWalletOneModelObj = FundWalletOneModel().obs;

@override void onClose() { super.onClose(); amountController.dispose(); } 
 }
