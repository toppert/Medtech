import '../../../core/app_export.dart';import 'ratings_item_model.dart';/// This class defines the variables used in the [ratings_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RatingsModel {Rx<List<RatingsItemModel>> ratingsItemList = Rx(List.generate(3,(index) => RatingsItemModel()));

 }
