import '../wallet_screen/widgets/wallet_item_widget.dart';import 'controller/wallet_controller.dart';import 'models/wallet_item_model.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';import 'package:medtech/widgets/app_bar/appbar_image.dart';import 'package:medtech/widgets/app_bar/appbar_title.dart';import 'package:medtech/widgets/app_bar/custom_app_bar.dart';import 'package:medtech/widgets/custom_elevated_button.dart';class WalletScreen extends GetWidget<WalletController> {const WalletScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [Container(padding: EdgeInsets.symmetric(vertical: 17.v), decoration: AppDecoration.fillPrimaryContainer, child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 19.v), CustomAppBar(leadingWidth: 43.h, leading: AppbarImage(svgPath: ImageConstant.imgArrowleftOnprimarycontainer, margin: EdgeInsets.only(left: 19.h, top: 3.v, bottom: 1.v), onTap: () {onTapArrowleftone();}), title: AppbarTitle(text: "lbl_wallet".tr, margin: EdgeInsets.only(left: 35.h)))])), Expanded(child: SizedBox(width: double.maxFinite, child: Container(padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 15.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Container(padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 17.v), decoration: AppDecoration.fillPrimary1.copyWith(borderRadius: BorderRadiusStyle.roundedBorder4), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_20_800".tr, style: CustomTextStyles.headlineLargePrimary), SizedBox(height: 1.v), Text("lbl_current_balance".tr, style: theme.textTheme.labelLarge)])), CustomElevatedButton(width: 159.h, text: "lbl_fund_wallet".tr, margin: EdgeInsets.only(top: 1.v, bottom: 3.v), leftIcon: Container(margin: EdgeInsets.only(right: 10.h), child: CustomImageView(svgPath: ImageConstant.imgAkariconsplus)), buttonTextStyle: CustomTextStyles.titleMediumPrimaryContainerSemiBold, onTap: () {onTapFundwallet();})])), SizedBox(height: 40.v), Text("msg_transaction_history".tr, style: CustomTextStyles.titleLargeMedium), Expanded(child: Padding(padding: EdgeInsets.only(top: 28.v, right: 3.h), child: Obx(() => ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 15.v);}, itemCount: controller.walletModelObj.value.walletItemList.value.length, itemBuilder: (context, index) {WalletItemModel model = controller.walletModelObj.value.walletItemList.value[index]; return WalletItemWidget(model);}))))]))))])))); } 


/// Navigates to the previous screen.
///
/// When the action is triggered, this function uses the [Get] package to 
/// navigate to the previous screen in the navigation stack.
onTapArrowleftone() { Get.back(); } 
/// Navigates to the fundWalletOneScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the fundWalletOneScreen.
onTapFundwallet() { Get.toNamed(AppRoutes.fundWalletOneScreen, ); } 
 }