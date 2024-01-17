import '../../../core/app_export.dart';
import 'menulist_item_model.dart';

/// This class defines the variables used in the [restaurant_page_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RestaurantPageModel {
  Rx<List<MenulistItemModel>> menulistItemList = Rx([
    MenulistItemModel(
        dishName: "Dish 1".obs, dishPrice: "300 Rupees".obs, quantity: "2".obs),
    MenulistItemModel(dishName: "Dish 2".obs, dishPrice: "300 Rupees".obs),
    MenulistItemModel(dishName: "Dish 3".obs, dishPrice: "300 Rupees".obs)
  ]);
}
