import 'package:jayesh_s_application2/widgets/custom_search_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/thirty_item_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'widgets/sixtynine_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:jayesh_s_application2/core/app_export.dart';


// ignore_for_file: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 10.v),
          decoration: AppDecoration.outlineOnError,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 6.h),
              child: Column(
                children: [
                  _buildRiArrowUpLine(context),
                  SizedBox(height: 11.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      right: 14.h,
                    ),
                    child: CustomSearchView(
                      controller: searchController,
                      hintText: "Search ",
                    ),
                  ),
                  SizedBox(height: 32.v),
                  _buildThirty(context),
                  SizedBox(height: 5.v),
                  SizedBox(
                    height: 6.v,
                    child: AnimatedSmoothIndicator(
                      activeIndex: sliderIndex,
                      count: 1,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                        spacing: 7,
                        activeDotColor: theme.colorScheme.primaryContainer,
                        dotColor: theme.colorScheme.primaryContainer,
                        activeDotScale: 1.2,
                        dotHeight: 5.v,
                        dotWidth: 5.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 15.h,
                        right: 191.h,
                      ),
                      child: ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return SizedBox(
                            height: 1.v,
                          );
                        },
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return SixtynineItemWidget();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRiArrowUpLine(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 16.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgTablerLocationFilled,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgRiArrowUpLine,
                      height: 9.adaptSize,
                      width: 9.adaptSize,
                      margin: EdgeInsets.only(
                        left: 5.h,
                        bottom: 10.v,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "MP Nagar,Bhopal,MP,India",
                    style: CustomTextStyles.interOnErrorRegular,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgHealthiconsUiUserProfile,
            height: 48.v,
            width: 49.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThirty(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 120.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            sliderIndex = index;
          },
        ),
        itemCount: 1,
        itemBuilder: (context, index, realIndex) {
          return ThirtyItemWidget();
        },
      ),
    );
  }
}
