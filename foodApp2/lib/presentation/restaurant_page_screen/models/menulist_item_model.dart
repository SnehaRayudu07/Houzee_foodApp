import '../../../core/app_export.dart';

/// This class is used in the [menulist_item_widget] screen.
class MenulistItemModel {
  MenulistItemModel({
    this.dishName,
    this.dishPrice,
    this.quantity,
    this.id,
  }) {
    dishName = dishName ?? Rx("Dish 1");
    dishPrice = dishPrice ?? Rx("300 Rupees");
    quantity = quantity ?? Rx("2");
    id = id ?? Rx("");
  }

  Rx<String>? dishName;

  Rx<String>? dishPrice;

  Rx<String>? quantity;

  Rx<String>? id;
}
