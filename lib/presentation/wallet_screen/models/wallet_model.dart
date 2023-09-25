import '../../../core/app_export.dart';import 'wallet_item_model.dart';/// This class defines the variables used in the [wallet_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class WalletModel {Rx<List<WalletItemModel>> walletItemList = Rx(List.generate(4,(index) => WalletItemModel()));

 }
