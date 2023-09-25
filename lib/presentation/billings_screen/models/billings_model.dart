import '../../../core/app_export.dart';import 'billdetails_item_model.dart';/// This class defines the variables used in the [billings_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BillingsModel {Rx<List<BilldetailsItemModel>> billdetailsItemList = Rx(List.generate(4,(index) => BilldetailsItemModel()));

 }
