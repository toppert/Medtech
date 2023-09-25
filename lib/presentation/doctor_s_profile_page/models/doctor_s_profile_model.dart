import '../../../core/app_export.dart';import 'userprofileinfo_item_model.dart';/// This class defines the variables used in the [doctor_s_profile_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DoctorSProfileModel {Rx<List<UserprofileinfoItemModel>> userprofileinfoItemList = Rx(List.generate(4,(index) => UserprofileinfoItemModel()));

 }
