import '../../../core/app_export.dart';import 'productrow_item_model.dart';/// This class defines the variables used in the [cart_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CartModel {Rx<List<ProductrowItemModel>> productrowItemList = Rx(List.generate(2,(index) => ProductrowItemModel()));

 }
