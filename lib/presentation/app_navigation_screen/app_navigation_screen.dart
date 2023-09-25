import 'controller/app_navigation_controller.dart';import 'package:flutter/material.dart';import 'package:medtech/core/app_export.dart';class AppNavigationScreen extends GetWidget<AppNavigationController> {const AppNavigationScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primaryContainer.withOpacity(1), body: SizedBox(width: 375.h, child: Column(children: [Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_app_navigation".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 20.h), child: Text("msg_check_your_app_s".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.blueGray40003, fontSize: 16.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.black900)])), Expanded(child: SingleChildScrollView(child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [GestureDetector(onTap: () {onTapSplashScreen();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_splash_screen".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapOnboarding();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_onboarding".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapTabContainer();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_tab_container".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapSignIn();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_sign_in".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapForgotPassword();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_forgot_password".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapEnterOTP();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_enter_otp".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapResetPassword();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_reset_password".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapSuccessful();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_successful2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapAppointmentsemptystate();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_appointments_empty".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapAppointments();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_appointments".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapViewRequest();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_view_request".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapRejectAppointment();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_reject_appointment".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapViewAppointment();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_view_appointment".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapCheckInOne();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_check_in_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapCheckInContainer();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_check_in_container".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapConsultationEnded();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_consultation_ended".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapAddSOAPNote();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_add_soap_note".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapUploadDocument();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_upload_document".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapCancelAppointment();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_cancel_appointment".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapPatientsemptystate();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_patients_empty_state".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapPatients();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_patients".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapViewPatientThreeTabContainer();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_view_patient_three".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapViewPatientTabContainer();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_view_patient_tab".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapBillingsemptystate();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_billings_empty_state".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapBillings();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_billings".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapDashboard();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_dashboard".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapAccountSettings();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_account_settings".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapPersonalProfile();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_personal_profile".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapHealthProfile();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_health_profile".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapWalletOne();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_wallet_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapCreateWallet();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_create_wallet".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapWallet();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_wallet".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapFundWalletOne();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_fund_wallet_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapFundWallet();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_fund_wallet".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapAddCard();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_add_card".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapSecurity();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_security".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapSecurityTwo();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_security_two".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapSecurityOne();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_security_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapNotifications();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_notifications".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapConsultationsemptystate();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_consultations_empty".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapConsultations();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_consultations".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapViewSoapNote();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_view_soap_note2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapEditSOAPNote();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_edit_soap_note".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapRatingsemptystate();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_ratings_empty_state".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapRatings();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_ratings".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapHelpCenter();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_help_center".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapMessage();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_message".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapSCWCommunity();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_scw_community".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapStory();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_story".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapCreateStory();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_create_story".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapLabTestsemptystate();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_lab_tests_empty".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapLabTests();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_lab_tests".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapBookLabTest();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_book_lab_test".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapServiceOptionOne();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_service_option_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapServiceOption();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_service_option".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapPaymentSuccessful();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_payment_successful".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapDeleteTest();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_delete_test".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapConsultationsemptystate1();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_consultations_empty".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapConsultations1();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_consultations".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapViewConsultation();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_view_consultation".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapRateDoctor();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_rate_doctor".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapConsultationsemptystate2();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_consultations_empty".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapConsultations2();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_consultations".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapViewSoapNote1();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_view_soap_note2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapEditSOAPNote1();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_edit_soap_note".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapPharmacy();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_pharmacy".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapProductPage();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_product_page".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapCart();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_cart".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapCheckoutOne();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_checkout_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapCheckout();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_checkout".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapPayment();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_payment".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapReview();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_review".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapSuccess();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_success".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapMedicationsemptystateTabContainer();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_medications_empty".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapViewRx();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_view_rx".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapCancelMedication();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_cancel_medication".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapAppointmentsemptystate1();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_appointments_empty".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapAppointments1();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_appointments".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapCancelAppointment1();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_cancel_appointment".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapRescheduleAppointmentOne();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_reschedule_appointment2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapAppointmentRescheduled();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_appointment_rescheduled".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapDoctorsProfileTabContainer();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_doctor_s_profile".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapRescheduleAppointment();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_reschedule_appointment".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapOrderDetails();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_order_details".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapOrderDetailsOne();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_order_details_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapTrackOrder();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_track_order".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapReOrder();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_re_order".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapBookAppointmentNow();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_book_appointment_now".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapBookAppointmentNowOne();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_book_appointment_now2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapBookAppointmentLater();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_book_appointment_later".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapReviewBooking();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_review_booking".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapPaymentSuccessful1();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_payment_successful".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapAppointmentCreatedLater();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_appointment_created_later".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapCheckIn();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_check_in".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapPaymentDeclined();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_payment_declined".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapAppointmentCreatedNow();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_appointment_created_now".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapSpecialty();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_specialty".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapDatepicker();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_datepicker".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapDoctorsDashboard();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_doctor_s_dashboard".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapAccountSettings1();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_account_settings".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapPersonalProfile1();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("msg_personal_profile".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapBio();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_bio".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapAvailability();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_availability".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapSecurityOne1();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_security_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapSecurity1();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_security".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapSecurityTwo1();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_security_two".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapNotifications1();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_notifications".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)]))), GestureDetector(onTap: () {onTapSignOut();}, child: Container(decoration: AppDecoration.fillPrimaryContainer, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v), child: Text("lbl_sign_out".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: 20.fSize, fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), SizedBox(height: 5.v), Divider(height: 1.v, thickness: 1.v, color: appTheme.blueGray40003)])))]))))])))); } 
/// Navigates to the splashScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the splashScreen.
onTapSplashScreen() { Get.toNamed(AppRoutes.splashScreen, ); } 
/// Navigates to the onboardingScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the onboardingScreen.
onTapOnboarding() { Get.toNamed(AppRoutes.onboardingScreen, ); } 
/// Navigates to the tabContainerScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the tabContainerScreen.
onTapTabContainer() { Get.toNamed(AppRoutes.tabContainerScreen, ); } 
/// Navigates to the signInScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the signInScreen.
onTapSignIn() { Get.toNamed(AppRoutes.signInScreen, ); } 
/// Navigates to the forgotPasswordScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the forgotPasswordScreen.
onTapForgotPassword() { Get.toNamed(AppRoutes.forgotPasswordScreen, ); } 
/// Navigates to the enterOtpScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the enterOtpScreen.
onTapEnterOTP() { Get.toNamed(AppRoutes.enterOtpScreen, ); } 
/// Navigates to the resetPasswordScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the resetPasswordScreen.
onTapResetPassword() { Get.toNamed(AppRoutes.resetPasswordScreen, ); } 
/// Navigates to the successfulScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the successfulScreen.
onTapSuccessful() { Get.toNamed(AppRoutes.successfulScreen, ); } 
/// Navigates to the appointmentsEmptyStateScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the appointmentsEmptyStateScreen.
onTapAppointmentsemptystate() { Get.toNamed(AppRoutes.appointmentsEmptyStateScreen, ); } 
/// Navigates to the appointmentsScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the appointmentsScreen.
onTapAppointments() { Get.toNamed(AppRoutes.appointmentsScreen, ); } 
/// Navigates to the viewRequestScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the viewRequestScreen.
onTapViewRequest() { Get.toNamed(AppRoutes.viewRequestScreen, ); } 
/// Navigates to the rejectAppointmentScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the rejectAppointmentScreen.
onTapRejectAppointment() { Get.toNamed(AppRoutes.rejectAppointmentScreen, ); } 
/// Navigates to the viewAppointmentScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the viewAppointmentScreen.
onTapViewAppointment() { Get.toNamed(AppRoutes.viewAppointmentScreen, ); } 
/// Navigates to the checkInOneScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the checkInOneScreen.
onTapCheckInOne() { Get.toNamed(AppRoutes.checkInOneScreen, ); } 
/// Navigates to the checkInContainer1Screen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the checkInContainer1Screen.
onTapCheckInContainer() { Get.toNamed(AppRoutes.checkInContainer1Screen, ); } 
/// Navigates to the consultationEndedScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the consultationEndedScreen.
onTapConsultationEnded() { Get.toNamed(AppRoutes.consultationEndedScreen, ); } 
/// Navigates to the addSoapNoteScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the addSoapNoteScreen.
onTapAddSOAPNote() { Get.toNamed(AppRoutes.addSoapNoteScreen, ); } 
/// Navigates to the uploadDocumentScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the uploadDocumentScreen.
onTapUploadDocument() { Get.toNamed(AppRoutes.uploadDocumentScreen, ); } 
/// Navigates to the cancelAppointmentScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the cancelAppointmentScreen.
onTapCancelAppointment() { Get.toNamed(AppRoutes.cancelAppointmentScreen, ); } 
/// Navigates to the patientsEmptyStateScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the patientsEmptyStateScreen.
onTapPatientsemptystate() { Get.toNamed(AppRoutes.patientsEmptyStateScreen, ); } 
/// Navigates to the patientsScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the patientsScreen.
onTapPatients() { Get.toNamed(AppRoutes.patientsScreen, ); } 
/// Navigates to the viewPatientThreeTabContainerScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the viewPatientThreeTabContainerScreen.
onTapViewPatientThreeTabContainer() { Get.toNamed(AppRoutes.viewPatientThreeTabContainerScreen, ); } 
/// Navigates to the viewPatientTabContainerScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the viewPatientTabContainerScreen.
onTapViewPatientTabContainer() { Get.toNamed(AppRoutes.viewPatientTabContainerScreen, ); } 
/// Navigates to the billingsEmptyStateScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the billingsEmptyStateScreen.
onTapBillingsemptystate() { Get.toNamed(AppRoutes.billingsEmptyStateScreen, ); } 
/// Navigates to the billingsScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the billingsScreen.
onTapBillings() { Get.toNamed(AppRoutes.billingsScreen, ); } 
/// Navigates to the dashboardScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the dashboardScreen.
onTapDashboard() { Get.toNamed(AppRoutes.dashboardScreen, ); } 
/// Navigates to the accountSettingsScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the accountSettingsScreen.
onTapAccountSettings() { Get.toNamed(AppRoutes.accountSettingsScreen, ); } 
/// Navigates to the personalProfileScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the personalProfileScreen.
onTapPersonalProfile() { Get.toNamed(AppRoutes.personalProfileScreen, ); } 
/// Navigates to the healthProfileScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the healthProfileScreen.
onTapHealthProfile() { Get.toNamed(AppRoutes.healthProfileScreen, ); } 
/// Navigates to the walletOneScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the walletOneScreen.
onTapWalletOne() { Get.toNamed(AppRoutes.walletOneScreen, ); } 
/// Navigates to the createWalletScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the createWalletScreen.
onTapCreateWallet() { Get.toNamed(AppRoutes.createWalletScreen, ); } 
/// Navigates to the walletScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the walletScreen.
onTapWallet() { Get.toNamed(AppRoutes.walletScreen, ); } 
/// Navigates to the fundWalletOneScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the fundWalletOneScreen.
onTapFundWalletOne() { Get.toNamed(AppRoutes.fundWalletOneScreen, ); } 
/// Navigates to the fundWalletScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the fundWalletScreen.
onTapFundWallet() { Get.toNamed(AppRoutes.fundWalletScreen, ); } 
/// Navigates to the addCardScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the addCardScreen.
onTapAddCard() { Get.toNamed(AppRoutes.addCardScreen, ); } 
/// Navigates to the securityScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the securityScreen.
onTapSecurity() { Get.toNamed(AppRoutes.securityScreen, ); } 
/// Navigates to the securityTwoScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the securityTwoScreen.
onTapSecurityTwo() { Get.toNamed(AppRoutes.securityTwoScreen, ); } 
/// Navigates to the securityOneScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the securityOneScreen.
onTapSecurityOne() { Get.toNamed(AppRoutes.securityOneScreen, ); } 
/// Navigates to the notificationsScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the notificationsScreen.
onTapNotifications() { Get.toNamed(AppRoutes.notificationsScreen, ); } 
/// Navigates to the consultationsEmptyStateScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the consultationsEmptyStateScreen.
onTapConsultationsemptystate() { Get.toNamed(AppRoutes.consultationsEmptyStateScreen, ); } 
/// Navigates to the consultationsScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the consultationsScreen.
onTapConsultations() { Get.toNamed(AppRoutes.consultationsScreen, ); } 
/// Navigates to the viewSoapNoteScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the viewSoapNoteScreen.
onTapViewSoapNote() { Get.toNamed(AppRoutes.viewSoapNoteScreen, ); } 
/// Navigates to the editSoapNoteScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the editSoapNoteScreen.
onTapEditSOAPNote() { Get.toNamed(AppRoutes.editSoapNoteScreen, ); } 
/// Navigates to the ratingsEmptyStateScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the ratingsEmptyStateScreen.
onTapRatingsemptystate() { Get.toNamed(AppRoutes.ratingsEmptyStateScreen, ); } 
/// Navigates to the ratingsScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the ratingsScreen.
onTapRatings() { Get.toNamed(AppRoutes.ratingsScreen, ); } 
/// Navigates to the helpCenterScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the helpCenterScreen.
onTapHelpCenter() { Get.toNamed(AppRoutes.helpCenterScreen, ); } 
/// Navigates to the messageScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the messageScreen.
onTapMessage() { Get.toNamed(AppRoutes.messageScreen, ); } 
/// Navigates to the scwCommunityScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the scwCommunityScreen.
onTapSCWCommunity() { Get.toNamed(AppRoutes.scwCommunityScreen, ); } 
/// Navigates to the storyScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the storyScreen.
onTapStory() { Get.toNamed(AppRoutes.storyScreen, ); } 
/// Navigates to the createStoryScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the createStoryScreen.
onTapCreateStory() { Get.toNamed(AppRoutes.createStoryScreen, ); } 
/// Navigates to the labTestsEmptyStateScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the labTestsEmptyStateScreen.
onTapLabTestsemptystate() { Get.toNamed(AppRoutes.labTestsEmptyStateScreen, ); } 
/// Navigates to the labTestsScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the labTestsScreen.
onTapLabTests() { Get.toNamed(AppRoutes.labTestsScreen, ); } 
/// Navigates to the bookLabTestScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the bookLabTestScreen.
onTapBookLabTest() { Get.toNamed(AppRoutes.bookLabTestScreen, ); } 
/// Navigates to the serviceOptionOneScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the serviceOptionOneScreen.
onTapServiceOptionOne() { Get.toNamed(AppRoutes.serviceOptionOneScreen, ); } 
/// Navigates to the serviceOptionScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the serviceOptionScreen.
onTapServiceOption() { Get.toNamed(AppRoutes.serviceOptionScreen, ); } 
/// Navigates to the paymentSuccessfulScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the paymentSuccessfulScreen.
onTapPaymentSuccessful() { Get.toNamed(AppRoutes.paymentSuccessfulScreen, ); } 
/// Navigates to the deleteTestScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the deleteTestScreen.
onTapDeleteTest() { Get.toNamed(AppRoutes.deleteTestScreen, ); } 
/// Navigates to the consultationsEmptyState1Screen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the consultationsEmptyState1Screen.
onTapConsultationsemptystate1() { Get.toNamed(AppRoutes.consultationsEmptyState1Screen, ); } 
/// Navigates to the consultations1Screen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the consultations1Screen.
onTapConsultations1() { Get.toNamed(AppRoutes.consultations1Screen, ); } 
/// Navigates to the viewConsultationScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the viewConsultationScreen.
onTapViewConsultation() { Get.toNamed(AppRoutes.viewConsultationScreen, ); } 
/// Navigates to the rateDoctorScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the rateDoctorScreen.
onTapRateDoctor() { Get.toNamed(AppRoutes.rateDoctorScreen, ); } 
/// Navigates to the consultationsEmptyState2Screen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the consultationsEmptyState2Screen.
onTapConsultationsemptystate2() { Get.toNamed(AppRoutes.consultationsEmptyState2Screen, ); } 
/// Navigates to the consultations2Screen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the consultations2Screen.
onTapConsultations2() { Get.toNamed(AppRoutes.consultations2Screen, ); } 
/// Navigates to the viewSoapNote1Screen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the viewSoapNote1Screen.
onTapViewSoapNote1() { Get.toNamed(AppRoutes.viewSoapNote1Screen, ); } 
/// Navigates to the editSoapNote1Screen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the editSoapNote1Screen.
onTapEditSOAPNote1() { Get.toNamed(AppRoutes.editSoapNote1Screen, ); } 
/// Navigates to the pharmacyScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the pharmacyScreen.
onTapPharmacy() { Get.toNamed(AppRoutes.pharmacyScreen, ); } 
/// Navigates to the productPageScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the productPageScreen.
onTapProductPage() { Get.toNamed(AppRoutes.productPageScreen, ); } 
/// Navigates to the cartScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the cartScreen.
onTapCart() { Get.toNamed(AppRoutes.cartScreen, ); } 
/// Navigates to the checkoutOneScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the checkoutOneScreen.
onTapCheckoutOne() { Get.toNamed(AppRoutes.checkoutOneScreen, ); } 
/// Navigates to the checkoutScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the checkoutScreen.
onTapCheckout() { Get.toNamed(AppRoutes.checkoutScreen, ); } 
/// Navigates to the paymentScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the paymentScreen.
onTapPayment() { Get.toNamed(AppRoutes.paymentScreen, ); } 
/// Navigates to the reviewScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the reviewScreen.
onTapReview() { Get.toNamed(AppRoutes.reviewScreen, ); } 
/// Navigates to the successScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the successScreen.
onTapSuccess() { Get.toNamed(AppRoutes.successScreen, ); } 
/// Navigates to the medicationsEmptyStateTabContainerScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the medicationsEmptyStateTabContainerScreen.
onTapMedicationsemptystateTabContainer() { Get.toNamed(AppRoutes.medicationsEmptyStateTabContainerScreen, ); } 
/// Navigates to the viewRxScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the viewRxScreen.
onTapViewRx() { Get.toNamed(AppRoutes.viewRxScreen, ); } 
/// Navigates to the cancelMedicationScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the cancelMedicationScreen.
onTapCancelMedication() { Get.toNamed(AppRoutes.cancelMedicationScreen, ); } 
/// Navigates to the appointmentsEmptyState1Screen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the appointmentsEmptyState1Screen.
onTapAppointmentsemptystate1() { Get.toNamed(AppRoutes.appointmentsEmptyState1Screen, ); } 
/// Navigates to the appointments1Screen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the appointments1Screen.
onTapAppointments1() { Get.toNamed(AppRoutes.appointments1Screen, ); } 
/// Navigates to the cancelAppointment1Screen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the cancelAppointment1Screen.
onTapCancelAppointment1() { Get.toNamed(AppRoutes.cancelAppointment1Screen, ); } 
/// Navigates to the rescheduleAppointmentOneScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the rescheduleAppointmentOneScreen.
onTapRescheduleAppointmentOne() { Get.toNamed(AppRoutes.rescheduleAppointmentOneScreen, ); } 
/// Navigates to the appointmentRescheduledScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the appointmentRescheduledScreen.
onTapAppointmentRescheduled() { Get.toNamed(AppRoutes.appointmentRescheduledScreen, ); } 
/// Navigates to the doctorSProfileTabContainerScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the doctorSProfileTabContainerScreen.
onTapDoctorsProfileTabContainer() { Get.toNamed(AppRoutes.doctorSProfileTabContainerScreen, ); } 
/// Navigates to the rescheduleAppointmentScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the rescheduleAppointmentScreen.
onTapRescheduleAppointment() { Get.toNamed(AppRoutes.rescheduleAppointmentScreen, ); } 
/// Navigates to the orderDetailsScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the orderDetailsScreen.
onTapOrderDetails() { Get.toNamed(AppRoutes.orderDetailsScreen, ); } 
/// Navigates to the orderDetailsOneScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the orderDetailsOneScreen.
onTapOrderDetailsOne() { Get.toNamed(AppRoutes.orderDetailsOneScreen, ); } 
/// Navigates to the trackOrderScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the trackOrderScreen.
onTapTrackOrder() { Get.toNamed(AppRoutes.trackOrderScreen, ); } 
/// Navigates to the reOrderScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the reOrderScreen.
onTapReOrder() { Get.toNamed(AppRoutes.reOrderScreen, ); } 
/// Navigates to the bookAppointmentNowScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the bookAppointmentNowScreen.
onTapBookAppointmentNow() { Get.toNamed(AppRoutes.bookAppointmentNowScreen, ); } 
/// Navigates to the bookAppointmentNowOneScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the bookAppointmentNowOneScreen.
onTapBookAppointmentNowOne() { Get.toNamed(AppRoutes.bookAppointmentNowOneScreen, ); } 
/// Navigates to the bookAppointmentLaterScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the bookAppointmentLaterScreen.
onTapBookAppointmentLater() { Get.toNamed(AppRoutes.bookAppointmentLaterScreen, ); } 
/// Navigates to the reviewBookingScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the reviewBookingScreen.
onTapReviewBooking() { Get.toNamed(AppRoutes.reviewBookingScreen, ); } 
/// Navigates to the paymentSuccessful1Screen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the paymentSuccessful1Screen.
onTapPaymentSuccessful1() { Get.toNamed(AppRoutes.paymentSuccessful1Screen, ); } 
/// Navigates to the appointmentCreatedLaterScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the appointmentCreatedLaterScreen.
onTapAppointmentCreatedLater() { Get.toNamed(AppRoutes.appointmentCreatedLaterScreen, ); } 
/// Navigates to the checkInScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the checkInScreen.
onTapCheckIn() { Get.toNamed(AppRoutes.checkInScreen, ); } 
/// Navigates to the paymentDeclinedScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the paymentDeclinedScreen.
onTapPaymentDeclined() { Get.toNamed(AppRoutes.paymentDeclinedScreen, ); } 
/// Navigates to the appointmentCreatedNowScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the appointmentCreatedNowScreen.
onTapAppointmentCreatedNow() { Get.toNamed(AppRoutes.appointmentCreatedNowScreen, ); } 
/// Navigates to the specialtyScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the specialtyScreen.
onTapSpecialty() { Get.toNamed(AppRoutes.specialtyScreen, ); } 
/// Navigates to the datepickerScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the datepickerScreen.
onTapDatepicker() { Get.toNamed(AppRoutes.datepickerScreen, ); } 
/// Navigates to the doctorSDashboardScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the doctorSDashboardScreen.
onTapDoctorsDashboard() { Get.toNamed(AppRoutes.doctorSDashboardScreen, ); } 
/// Navigates to the accountSettings1Screen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the accountSettings1Screen.
onTapAccountSettings1() { Get.toNamed(AppRoutes.accountSettings1Screen, ); } 
/// Navigates to the personalProfile1Screen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the personalProfile1Screen.
onTapPersonalProfile1() { Get.toNamed(AppRoutes.personalProfile1Screen, ); } 
/// Navigates to the bioScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the bioScreen.
onTapBio() { Get.toNamed(AppRoutes.bioScreen, ); } 
/// Navigates to the availabilityScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the availabilityScreen.
onTapAvailability() { Get.toNamed(AppRoutes.availabilityScreen, ); } 
/// Navigates to the securityOne1Screen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the securityOne1Screen.
onTapSecurityOne1() { Get.toNamed(AppRoutes.securityOne1Screen, ); } 
/// Navigates to the security1Screen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the security1Screen.
onTapSecurity1() { Get.toNamed(AppRoutes.security1Screen, ); } 
/// Navigates to the securityTwo1Screen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the securityTwo1Screen.
onTapSecurityTwo1() { Get.toNamed(AppRoutes.securityTwo1Screen, ); } 
/// Navigates to the notifications1Screen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the notifications1Screen.
onTapNotifications1() { Get.toNamed(AppRoutes.notifications1Screen, ); } 
/// Navigates to the signOutScreen when the action is triggered.

/// When the action is triggered, this function uses the [Get] package to
/// push the named route for the signOutScreen.
onTapSignOut() { Get.toNamed(AppRoutes.signOutScreen, ); } 
 }
