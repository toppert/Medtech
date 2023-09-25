import '../../../core/app_export.dart';/// This class is used in the [orderdetails_item_widget] screen.
class OrderdetailsItemModel {OrderdetailsItemModel({this.orderHaematolog, this.orderDiagnostic, this.id, }) { orderHaematolog = orderHaematolog  ?? Rx("Blood count (Haematology)");orderDiagnostic = orderDiagnostic  ?? Rx("Funbell Diagnostics Centre");id = id  ?? Rx(""); }

Rx<String>? orderHaematolog;

Rx<String>? orderDiagnostic;

Rx<String>? id;

 }
