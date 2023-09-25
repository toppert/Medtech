import '../../../core/app_export.dart';/// This class is used in the [billdetails_item_widget] screen.
class BilldetailsItemModel {BilldetailsItemModel({this.userName, this.userGender, this.id, }) { userName = userName  ?? Rx("Ejiro Osarobo");userGender = userGender  ?? Rx("Female");id = id  ?? Rx(""); }

Rx<String>? userName;

Rx<String>? userGender;

Rx<String>? id;

 }
