import '../../../core/app_export.dart';import 'chipviewexpiryd1_item_model.dart';/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {Userprofile1ItemModel({this.userName, this.chipviewexpiryd1ItemList, this.id, }) { userName = userName  ?? Rx("Dr. Rashida Mohammed");id = id  ?? Rx(""); }

Rx<String>? userName;

Rx<List<Chipviewexpiryd1ItemModel>> chipviewexpiryd1ItemList = Rx(List.generate(2,(index) =>Chipviewexpiryd1ItemModel()));

Rx<String>? id;

 }
