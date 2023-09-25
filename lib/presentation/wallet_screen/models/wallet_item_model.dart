import '../../../core/app_export.dart';/// This class is used in the [wallet_item_widget] screen.
class WalletItemModel {WalletItemModel({this.topup, this.credit, this.id, }) { topup = topup  ?? Rx("Top-Up");credit = credit  ?? Rx("Credit");id = id  ?? Rx(""); }

Rx<String>? topup;

Rx<String>? credit;

Rx<String>? id;

 }
