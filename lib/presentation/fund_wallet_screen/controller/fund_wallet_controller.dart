import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/fund_wallet_screen/models/fund_wallet_model.dart';/// A controller class for the FundWalletScreen.
///
/// This class manages the state of the FundWalletScreen, including the
/// current fundWalletModelObj
class FundWalletController extends GetxController {Rx<FundWalletModel> fundWalletModelObj = FundWalletModel().obs;

Rx<String> radioGroup = "".obs;

 }
