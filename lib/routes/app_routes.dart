import 'package:flutter/material.dart';
import '../presentation/offers_container_screen/offers_container_screen.dart';
import '../presentation/android_large_two_screen/android_large_two_screen.dart';
import '../presentation/android_large_three_screen/android_large_three_screen.dart';
import '../presentation/booking_page_for_user_after_click_on_book_now_screen/booking_page_for_user_after_click_on_book_now_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String offersContainerScreen = '/offers_container_screen';

  static const String offersPage = '/offers_page';

  static const String homePageForAllPage = '/home_page_for_all_page';

  static const String androidLargeTwoScreen = '/android_large_two_screen';

  static const String androidLargeThreeScreen = '/android_large_three_screen';

  static const String bookingPageForUserAfterClickOnBookNowScreen =
      '/booking_page_for_user_after_click_on_book_now_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    offersContainerScreen: (context) => OffersContainerScreen(),
    androidLargeTwoScreen: (context) => AndroidLargeTwoScreen(),
    androidLargeThreeScreen: (context) => AndroidLargeThreeScreen(),
    bookingPageForUserAfterClickOnBookNowScreen: (context) =>
        BookingPageForUserAfterClickOnBookNowScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
