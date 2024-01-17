import 'package:houzee/presentation/profile_screen/profile_screen.dart';
import 'package:houzee/presentation/welcome_screen/welcome_screen.dart';
import 'package:houzee/presentation/welcome_screen/binding/welcome_binding.dart';
import 'package:houzee/presentation/android_large_one_screen/android_large_one_screen.dart';
import 'package:houzee/presentation/android_large_one_screen/binding/android_large_one_binding.dart';
import 'package:houzee/presentation/restaurant_page_screen/restaurant_page_screen.dart';
import 'package:houzee/presentation/restaurant_page_screen/binding/restaurant_page_binding.dart';
import 'package:houzee/presentation/main_home_page_container1_screen/main_home_page_container1_screen.dart';
import 'package:houzee/presentation/main_home_page_container1_screen/binding/main_home_page_container1_binding.dart';
import 'package:houzee/presentation/new_password_page_screen/new_password_page_screen.dart';
import 'package:houzee/presentation/new_password_page_screen/binding/new_password_page_binding.dart';
import 'package:houzee/presentation/cart_page_screen/cart_page_screen.dart';
import 'package:houzee/presentation/cart_page_screen/binding/cart_page_binding.dart';
import 'package:houzee/presentation/payment_methods_screen/payment_methods_screen.dart';
import 'package:houzee/presentation/payment_methods_screen/binding/payment_methods_binding.dart';
import 'package:houzee/presentation/profile_screen/binding/profile_binding.dart';
import 'package:houzee/presentation/checkout_page_screen/checkout_page_screen.dart';
import 'package:houzee/presentation/checkout_page_screen/binding/checkout_page_binding.dart';
import 'package:houzee/presentation/loyalty_points_screen/loyalty_points_screen.dart';
import 'package:houzee/presentation/loyalty_points_screen/binding/loyalty_points_binding.dart';
import 'package:houzee/presentation/meal_plans_screen/meal_plans_screen.dart';
import 'package:houzee/presentation/meal_plans_screen/binding/meal_plans_binding.dart';
import 'package:houzee/presentation/cooks_main_page_screen/cooks_main_page_screen.dart';
import 'package:houzee/presentation/cooks_main_page_screen/binding/cooks_main_page_binding.dart';
import 'package:houzee/presentation/cook_plan_screen/cook_plan_screen.dart';
import 'package:houzee/presentation/cook_plan_screen/binding/cook_plan_binding.dart';
import 'package:houzee/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:houzee/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String welcomeScreen = '/welcome_screen';

  static const String androidLargeOneScreen = '/android_large_one_screen';

  static const String restaurantPageScreen = '/restaurant_page_screen';

  static const String mainHomePageContainerPage =
      '/main_home_page_container_page';

  static const String mainHomePageContainer1Screen =
      '/main_home_page_container1_screen';

  static const String newPasswordPageScreen = '/new_password_page_screen';

  static const String cartPageScreen = '/cart_page_screen';

  static const String paymentMethodsScreen = '/payment_methods_screen';

  static const String profileScreen = '/profile_screen';

  static const String checkoutPageScreen = '/checkout_page_screen';

  static const String loyaltyPointsScreen = '/loyalty_points_screen';

  static const String mealPlansScreen = '/meal_plans_screen';

  static const String cooksMainPageScreen = '/cooks_main_page_screen';

  static const String cookPlanScreen = '/cook_plan_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: welcomeScreen,
      page: () => WelcomeScreen(),
      bindings: [
        WelcomeBinding(),
      ],
    ),
    GetPage(
      name: androidLargeOneScreen,
      page: () => AndroidLargeOneScreen(),
      bindings: [
        AndroidLargeOneBinding(),
      ],
    ),
    GetPage(
      name: restaurantPageScreen,
      page: () => RestaurantPageScreen(),
      bindings: [
        RestaurantPageBinding(),
      ],
    ),
    GetPage(
      name: mainHomePageContainer1Screen,
      page: () => MainHomePageContainer1Screen(),
      bindings: [
        MainHomePageContainer1Binding(),
      ],
    ),
    GetPage(
      name: newPasswordPageScreen,
      page: () => NewPasswordPageScreen(),
      bindings: [
        NewPasswordPageBinding(),
      ],
    ),
    GetPage(
      name: cartPageScreen,
      page: () => CartPageScreen(),
      bindings: [
        CartPageBinding(),
      ],
    ),
    GetPage(
      name: paymentMethodsScreen,
      page: () => PaymentMethodsScreen(),
      bindings: [
        PaymentMethodsBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: checkoutPageScreen,
      page: () => CheckoutPageScreen(),
      bindings: [
        CheckoutPageBinding(),
      ],
    ),
    GetPage(
      name: loyaltyPointsScreen,
      page: () => LoyaltyPointsScreen(),
      bindings: [
        LoyaltyPointsBinding(),
      ],
    ),
    GetPage(
      name: mealPlansScreen,
      page: () => MealPlansScreen(),
      bindings: [
        MealPlansBinding(),
      ],
    ),
    GetPage(
      name: cooksMainPageScreen,
      page: () => CooksMainPageScreen(),
      bindings: [
        CooksMainPageBinding(),
      ],
    ),
    GetPage(
      name: cookPlanScreen,
      page: () => CookPlanScreen(),
      bindings: [
        CookPlanBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => WelcomeScreen(),
      bindings: [
        WelcomeBinding(),
      ],
    )
  ];
}
