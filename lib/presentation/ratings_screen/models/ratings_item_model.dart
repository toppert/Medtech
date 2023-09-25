import '../../../core/app_export.dart';/// This class is used in the [ratings_item_widget] screen.
class RatingsItemModel {RatingsItemModel({this.basseyokon, this.description, this.id, }) { basseyokon = basseyokon  ?? Rx("Bassey Okon");description = description  ?? Rx("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nam nulla ut elit lacinia consequat pellentesque morbi.");id = id  ?? Rx(""); }

Rx<String>? basseyokon;

Rx<String>? description;

Rx<String>? id;

 }
