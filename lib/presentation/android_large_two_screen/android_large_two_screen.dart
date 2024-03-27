import 'package:jayesh_s_application2/presentation/offers_page/offers_page.dart';
import 'package:jayesh_s_application2/presentation/home_page_for_all_page/home_page_for_all_page.dart';
import 'package:jayesh_s_application2/widgets/custom_text_form_field.dart';
import 'package:jayesh_s_application2/widgets/custom_search_view.dart';
import 'package:jayesh_s_application2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:jayesh_s_application2/core/app_export.dart';

class AndroidLargeTwoScreen extends StatelessWidget {
  AndroidLargeTwoScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nearbyController = TextEditingController();

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 10.v,
          ),
          child: Column(
            children: [
              _buildNinetyFour(context),
              SizedBox(height: 20.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "Good Morning!",
                    style: CustomTextStyles.titleLargeErrorContainer,
                  ),
                ),
              ),
              SizedBox(height: 18.v),
              _buildTwo(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(
            left: 5.h,
            right: 4.h,
          ),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyFour(BuildContext context) {
    return SizedBox(
      height: 92.v,
      width: 335.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgHealthiconsUiUserProfile,
            height: 48.v,
            width: 49.h,
            alignment: Alignment.topRight,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgTablerLocationFilled,
            height: 20.adaptSize,
            width: 20.adaptSize,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 7.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgWhatsappImage20240314,
            height: 46.v,
            width: 205.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: 1.h,
              top: 7.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgTelevisionErrorcontainer,
            height: 9.v,
            width: 43.h,
            radius: BorderRadius.circular(
              4.h,
            ),
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(
              right: 3.h,
              bottom: 37.v,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                right: 17.h,
                bottom: 36.v,
              ),
              child: Text(
                "Boy",
                style: CustomTextStyles.interOnError,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFluentEmojiHi,
                    height: 7.adaptSize,
                    width: 7.adaptSize,
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(right: 27.h),
                  ),
                  SizedBox(height: 1.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 4.v),
                        child: CustomTextFormField(
                          width: 139.h,
                          controller: nearbyController,
                          hintText: "nearby",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4.v),
                        child: CustomSearchView(
                          width: 156.h,
                          controller: searchController,
                          hintText: "Search ",
                          contentPadding: EdgeInsets.only(
                            left: 2.h,
                            top: 10.v,
                            bottom: 10.v,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return Container(
      width: 319.h,
      margin: EdgeInsets.only(
        left: 11.h,
        right: 8.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 78.h,
        vertical: 40.v,
      ),
      decoration: AppDecoration.outlineOnError2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 12.v),
          Text(
            "advertisement",
            style: theme.textTheme.titleLarge,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
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
