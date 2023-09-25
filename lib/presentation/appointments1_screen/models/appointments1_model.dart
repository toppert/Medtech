import '../../../core/app_export.dart';import 'userprofiledeta_item_model.dart';/// This class defines the variables used in the [appointments1_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Appointments1Model {Rx<List<UserprofiledetaItemModel>> userprofiledetaItemList = Rx(List.generate(5,(index) => UserprofiledetaItemModel()));

 }
