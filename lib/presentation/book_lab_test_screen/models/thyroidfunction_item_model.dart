import '../../../core/app_export.dart';/// This class is used in the [thyroidfunction_item_widget] screen.
class ThyroidfunctionItemModel {ThyroidfunctionItemModel({this.thyroidFunction, this.price, this.id, }) { thyroidFunction = thyroidFunction  ?? Rx("Thyroid Function Test (TFT)");price = price  ?? Rx("₦11,200");id = id  ?? Rx(""); }

Rx<String>? thyroidFunction;

Rx<String>? price;

Rx<String>? id;

 }
