import '../../../core/app_export.dart';/// This class is used in the [medicationsorde_item_widget] screen.
class MedicationsordeItemModel {MedicationsordeItemModel({this.orderid166523, this.price, this.panadolextra500, this.prostaneyedrop, this.id, }) { orderid166523 = orderid166523  ?? Rx("Order ID: 166523");price = price  ?? Rx("23/10/2022 | 9:00 AM");panadolextra500 = panadolextra500  ?? Rx("Panadol Extra (500mg) x1,");prostaneyedrop = prostaneyedrop  ?? Rx("Prostan Eyedrop (300ml) x2,");id = id  ?? Rx(""); }

Rx<String>? orderid166523;

Rx<String>? price;

Rx<String>? panadolextra500;

Rx<String>? prostaneyedrop;

Rx<String>? id;

 }
