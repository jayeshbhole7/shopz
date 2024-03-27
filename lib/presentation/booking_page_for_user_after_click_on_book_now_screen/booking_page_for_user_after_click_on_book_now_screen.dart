import 'package:jayesh_s_application2/presentation/offers_page/offers_page.dart';
import 'package:jayesh_s_application2/presentation/home_page_for_all_page/home_page_for_all_page.dart';
import 'package:jayesh_s_application2/widgets/custom_radio_button.dart';
import 'package:jayesh_s_application2/widgets/custom_rating_bar.dart';
import 'package:jayesh_s_application2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:jayesh_s_application2/core/app_export.dart';

class BookingPageForUserAfterClickOnBookNowScreen extends StatelessWidget {
  BookingPageForUserAfterClickOnBookNowScreen({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  String radioGroup1 = "";

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 24.v),
          child: Column(
            children: [
              _buildSix(context),
              SizedBox(height: 9.v),
              Container(
                width: 355.h,
                decoration: AppDecoration.outlineOnError4,
                child: Text(
                  "Overview       Reviews        Photos         About",
                  maxLines: null,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumRhodiumLibreGray70001,
                ),
              ),
              SizedBox(height: 39.v),
              _buildSeventyNine(context),
              SizedBox(height: 8.v),
              Divider(
                indent: 8.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 61.h,
                  margin: EdgeInsets.only(left: 14.h),
                  child: Text(
                    "Reviews",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumRhodiumLibre,
                  ),
                ),
              ),
              SizedBox(height: 7.v),
              _buildSixtyEight(context),
              SizedBox(height: 5.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 320.h,
                  margin: EdgeInsets.only(
                    left: 36.h,
                    right: 3.h,
                  ),
                  child: Text(
                    "Good saloon all the thing were clean and the products are under expire date. The prices are under budget. ",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallRhodiumLibreRed90001,
                  ),
                ),
              ),
              SizedBox(height: 4.v),
              _buildSeventyFour(context),
              SizedBox(height: 8.v),
              Container(
                width: 310.h,
                margin: EdgeInsets.only(
                  left: 31.h,
                  right: 18.h,
                ),
                child: Text(
                  "Good shop all the thing were clean and the products are under expire date. The prices are under budget. ",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallRhodiumLibreOnPrimary,
                ),
              ),
              SizedBox(height: 7.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 157.h,
                  margin: EdgeInsets.only(left: 13.h),
                  child: Text(
                    "Questions & Answers",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumRhodiumLibre,
                  ),
                ),
              ),
              SizedBox(height: 8.v),
              _buildSixtyFive(context),
              SizedBox(height: 6.v),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSix(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineOnError3.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "Shope Name",
              style: CustomTextStyles.bodySmallOnError,
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(left: 17.h),
            child: Text(
              "Shope owner Name",
              style: CustomTextStyles.bodySmallOnError,
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 19.h),
            child: Text(
              " 3.4 rating                 Service type name: 200",
              style: CustomTextStyles.reggaeOneOnError,
            ),
          ),
          SizedBox(height: 15.v),
          Divider(),
          SizedBox(height: 26.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMail,
                height: 18.adaptSize,
                width: 18.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 11.h),
                child: Text(
                  "1.2 km",
                  style: CustomTextStyles.bodySmallOnError,
                ),
              ),
            ],
          ),
          SizedBox(height: 21.v),
          Padding(
            padding: EdgeInsets.only(right: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 84.h,
                  margin: EdgeInsets.only(bottom: 53.v),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMingcuteTimeFillGray700,
                        height: 22.adaptSize,
                        width: 22.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 3.v),
                        child: Text(
                          "12:04 pm",
                          style: CustomTextStyles.bodySmallOnError,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 7.h,
                    vertical: 17.v,
                  ),
                  decoration: AppDecoration.outlineOnError1.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder30,
                  ),
                  child: SizedBox(
                    width: 41.h,
                    child: Text(
                      "Book Now\n\nAlready booked",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.reggaeOneOnErrorRegular,
                    ),
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
  Widget _buildSeventyNine(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLinkedin,
            height: 23.v,
            width: 19.h,
            margin: EdgeInsets.only(
              top: 7.v,
              bottom: 29.v,
            ),
          ),
          Expanded(
            child: Container(
              width: 282.h,
              margin: EdgeInsets.only(left: 18.h),
              child: Text(
                "Near, Police Station, Sarkhej Makarba Road, Sarkhej Roza Rd, Sarkhej, Ahmedabad, Gujarat 382210",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallRhodiumLibreRed900,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyEight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 19.h,
        right: 12.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse14,
            height: 35.adaptSize,
            width: 35.adaptSize,
            radius: BorderRadius.circular(
              17.h,
            ),
          ),
          Container(
            height: 27.v,
            width: 279.h,
            margin: EdgeInsets.only(
              left: 15.h,
              bottom: 7.v,
            ),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: CustomRadioButton(
                    width: 279.h,
                    text: "Mohammed Ali",
                    value: "Mohammed Ali",
                    groupValue: radioGroup,
                    isRightCheck: true,
                    onChange: (value) {
                      radioGroup = value;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: CustomRatingBar(
                    alignment: Alignment.bottomLeft,
                    initialRating: 0,
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
  Widget _buildSeventyFour(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse16,
            height: 35.adaptSize,
            width: 35.adaptSize,
            radius: BorderRadius.circular(
              17.h,
            ),
          ),
          Container(
            height: 27.v,
            width: 284.h,
            margin: EdgeInsets.only(
              left: 15.h,
              bottom: 7.v,
            ),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: CustomRadioButton(
                    width: 284.h,
                    text: "Radhe rai",
                    value: "Radhe rai",
                    groupValue: radioGroup1,
                    isRightCheck: true,
                    onChange: (value) {
                      radioGroup1 = value;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: CustomRatingBar(
                    alignment: Alignment.bottomLeft,
                    initialRating: 0,
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
  Widget _buildSixtyFive(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 19.h,
        right: 24.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse15,
            height: 35.adaptSize,
            width: 35.adaptSize,
            radius: BorderRadius.circular(
              17.h,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 19.h),
              padding: EdgeInsets.symmetric(
                horizontal: 26.h,
                vertical: 4.v,
              ),
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder17,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 7.v),
                  SizedBox(
                    width: 112.h,
                    child: Text(
                      "Naman ask a question",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallRhodiumLibreOnError_1,
                    ),
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
