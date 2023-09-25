import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/scw_community_screen/models/scw_community_model.dart';import 'package:flutter/material.dart';/// A controller class for the ScwCommunityScreen.
///
/// This class manages the state of the ScwCommunityScreen, including the
/// current scwCommunityModelObj
class ScwCommunityController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<ScwCommunityModel> scwCommunityModelObj = ScwCommunityModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
