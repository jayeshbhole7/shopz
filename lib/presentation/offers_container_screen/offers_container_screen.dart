import 'package:jayesh_s_application2/presentation/offers_page/offers_page.dart';
import 'package:jayesh_s_application2/presentation/home_page_for_all_page/home_page_for_all_page.dart';
import 'package:jayesh_s_application2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:jayesh_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class OffersContainerScreen extends StatelessWidget {
  OffersContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.offersPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 5.h, right: 4.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Tablerhomefilled:
        return "/";
      case BottomBarEnum.Television:
        return "/";
      case BottomBarEnum.Megaphone:
        return AppRoutes.offersPage;
      case BottomBarEnum.Mingcutehistoryfill:
        return "/";
      case BottomBarEnum.Solarwalletbold:
        return AppRoutes.homePageForAllPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.offersPage:
        return OffersPage();
      case AppRoutes.homePageForAllPage:
        return HomePageForAllPage();
      default:
        return DefaultWidget();
    }
  }
}
