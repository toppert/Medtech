import '../../../core/app_export.dart';/// This class is used in the [productrow_item_widget] screen.
class ProductrowItemModel {ProductrowItemModel({this.productName, this.productPrice, this.id, }) { productName = productName  ?? Rx("Prostan Eye Drops (2.5ml)");productPrice = productPrice  ?? Rx("₦ 2,600");id = id  ?? Rx(""); }

Rx<String>? productName;

Rx<String>? productPrice;

Rx<String>? id;

 }
