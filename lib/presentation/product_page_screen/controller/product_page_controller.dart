import 'package:medtech/core/app_export.dart';import 'package:medtech/presentation/product_page_screen/models/product_page_model.dart';/// A controller class for the ProductPageScreen.
///
/// This class manages the state of the ProductPageScreen, including the
/// current productPageModelObj
class ProductPageController extends GetxController {Rx<ProductPageModel> productPageModelObj = ProductPageModel().obs;

 }
