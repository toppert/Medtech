import '../../../core/app_export.dart';/// This class is used in the [userprofileinfo_item_widget] screen.
class UserprofileinfoItemModel {UserprofileinfoItemModel({this.userName, this.userDescription, this.id, }) { userName = userName  ?? Rx("Marvin McKinney");userDescription = userDescription  ?? Rx("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nam nulla ut elit lacinia consequat pellentesque morbi.");id = id  ?? Rx(""); }

Rx<String>? userName;

Rx<String>? userDescription;

Rx<String>? id;

 }
