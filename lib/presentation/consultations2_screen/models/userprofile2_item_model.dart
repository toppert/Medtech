import '../../../core/app_export.dart';/// This class is used in the [userprofile2_item_widget] screen.
class Userprofile2ItemModel {Userprofile2ItemModel({this.userName, this.id, }) { userName = userName  ?? Rx("Ejiro Osarobo");id = id  ?? Rx(""); }

Rx<String>? userName;

Rx<String>? id;

 }
