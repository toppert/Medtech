import 'controller/splash_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';class SplashScreen extends GetWidget<SplashController> {const SplashScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primaryContainer.withOpacity(1), body: SizedBox(height: mediaQueryData.size.height, width: double.maxFinite, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgGroup2, height: 518.v, width: 428.h, alignment: Alignment.topCenter), Align(alignment: Alignment.center, child: Text("lbl_med_tech".tr, style: CustomTextStyles.titleLargeInterRed800))])))); } 
 }
