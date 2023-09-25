import '../../../core/app_export.dart';import 'chipviewappoint1_item_model.dart';/// This class is used in the [userprofiledeta_item_widget] screen.
class UserprofiledetaItemModel {UserprofiledetaItemModel({this.userName, this.chipviewappoint1ItemList, this.id, }) { userName = userName  ?? Rx("Dr. Rashida Mohammed");id = id  ?? Rx(""); }

Rx<String>? userName;

Rx<List<Chipviewappoint1ItemModel>> chipviewappoint1ItemList = Rx(List.generate(2,(index) =>Chipviewappoint1ItemModel()));

Rx<String>? id;

 }
