import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/security_one_screen/models/security_one_model.dart';/// A controller class for the SecurityOneScreen.
///
/// This class manages the state of the SecurityOneScreen, including the
/// current securityOneModelObj
class SecurityOneController extends GetxController {Rx<SecurityOneModel> securityOneModelObj = SecurityOneModel().obs;

Rx<bool> user = false.obs;

 }
