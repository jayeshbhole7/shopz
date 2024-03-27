import 'package:jayesh_s_application2/presentation/offers_page/offers_page.dart';
import 'package:jayesh_s_application2/presentation/home_page_for_all_page/home_page_for_all_page.dart';
import 'package:jayesh_s_application2/widgets/custom_search_view.dart';
import 'package:jayesh_s_application2/widgets/custom_elevated_button.dart';
import 'package:jayesh_s_application2/widgets/custom_outlined_button.dart';
import 'package:jayesh_s_application2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:jayesh_s_application2/core/app_export.dart';

class AndroidLargeThreeScreen extends StatelessWidget {
  AndroidLargeThreeScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 10.h),
          child: Column(
            children: [
              SizedBox(height: 10.v),
              _buildSeventy(context),
              SizedBox(height: 3.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  right: 9.h,
                ),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "Search ",
                ),
              ),
              SizedBox(height: 20.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 17.h),
                  child: Text(
                    "Good Morning!",
                    style: CustomTextStyles.titleLargeErrorContainer,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
              _buildMap(context),
              SizedBox(height: 8.v),
              CustomOutlinedButton(
                text: "advertisement",
                margin: EdgeInsets.only(
                  left: 17.h,
                  right: 4.h,
                ),
              ),
              SizedBox(height: 11.v),
              CustomImageView(
                imagePath: ImageConstant.imgWhatsappImage20240314378x338,
                height: 378.v,
                width: 338.h,
              ),
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
  Widget _buildSeventy(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        right: 1.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 46.v,
            width: 206.h,
            margin: EdgeInsets.only(
              top: 7.v,
              bottom: 2.v,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTablerLocationFilled,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  alignment: Alignment.topLeft,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgWhatsappImage20240314,
                  height: 46.v,
                  width: 205.h,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 55.v,
            width: 49.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgHealthiconsUiUserProfile,
                  height: 48.v,
                  width: 49.h,
                  alignment: Alignment.topCenter,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    height: 9.v,
                    width: 43.h,
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgTelevisionErrorcontainer,
                          height: 9.v,
                          width: 43.h,
                          radius: BorderRadius.circular(
                            4.h,
                          ),
                          alignment: Alignment.center,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgFluentEmojiHi,
                          height: 7.adaptSize,
                          width: 7.adaptSize,
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 4.h),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Boy",
                    style: CustomTextStyles.interOnError,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMap(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 12.h,
        right: 7.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineOnError3.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 12.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 150.h,
                  margin: EdgeInsets.only(left: 1.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              "Hey Naman,\n\nYour Appointment is been\nScheduled with",
                          style: CustomTextStyles.bodySmallLexendff000000,
                        ),
                        TextSpan(
                          text: " shopnam\n\n",
                          style: theme.textTheme.labelLarge,
                        ),
                        TextSpan(
                          text: "12 feb,12:00Am 122, Arera Colony, Bhopal",
                          style: CustomTextStyles.lexendff000000,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 10.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIconParkOutli,
                      height: 10.adaptSize,
                      width: 10.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "View Appointment",
                        style: CustomTextStyles.lexendOnError,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgCircumEdit,
                      height: 10.adaptSize,
                      width: 10.adaptSize,
                      margin: EdgeInsets.only(left: 19.h),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.h),
                      child: Text(
                        "Delete booking",
                        style: CustomTextStyles.lexendOnError,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12.v),
                CustomElevatedButton(
                  height: 15.v,
                  width: 90.h,
                  text: "Map",
                  margin: EdgeInsets.only(right: 23.h),
                  buttonStyle: CustomButtonStyles.fillBlueGray,
                  buttonTextStyle: CustomTextStyles.lexendOnError,
                  alignment: Alignment.centerRight,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 12.v,
              right: 3.h,
              bottom: 12.v,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 86.v,
                  width: 79.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgThumbsUp,
                        height: 59.v,
                        width: 79.h,
                        alignment: Alignment.topCenter,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 59.v,
                        width: 63.h,
                        alignment: Alignment.bottomCenter,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 3.v),
                CustomImageView(
                  imagePath: ImageConstant.imgVectorBlue200,
                  height: 35.v,
                  width: 103.h,
                ),
              ],
            ),
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
