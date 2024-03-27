import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/seventysix_item_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:jayesh_s_application2/core/app_export.dart';

// ignore_for_file: must_be_immutable
class OffersPage extends StatelessWidget {
  OffersPage({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.outlineOnError,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIconParkOutlineOpen,
                    height: 5.adaptSize,
                    width: 5.adaptSize,
                  ),
                  SizedBox(height: 12.v),
                  _buildFifteen(context),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(left: 118.h),
                    child: Text(
                      "Our Services",
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: 24.v),
                  Padding(
                    padding: EdgeInsets.only(left: 22.h),
                    child: _buildFortySeven(
                      context,
                      pic: "pic",
                      namePriceProduct: "Name:\nPrice:\nProduct name:\nuses:",
                    ),
                  ),
                  SizedBox(height: 26.v),
                  Padding(
                    padding: EdgeInsets.only(left: 22.h),
                    child: _buildFortySeven(
                      context,
                      pic: "pic",
                      namePriceProduct: "Name:\nPrice:\nProduct name:\nuses:",
                    ),
                  ),
                  SizedBox(height: 26.v),
                  _buildFortyEight(context),
                  SizedBox(height: 68.v),
                  _buildSeventyEight(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFifteen(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 14.h),
        padding: EdgeInsets.symmetric(vertical: 14.v),
        decoration: AppDecoration.outlineOnError1.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 11.v,
                bottom: 31.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgPhPhoneFill,
                        height: 13.adaptSize,
                        width: 13.adaptSize,
                        margin: EdgeInsets.only(top: 27.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 13.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Owner name",
                              style: theme.textTheme.bodyMedium,
                            ),
                            SizedBox(height: 3.v),
                            SizedBox(
                              width: 56.h,
                              child: Text(
                                "95351546455",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .bodySmallRhodiumLibreOnError9,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.v),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMdiAddressMarker,
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                        margin: EdgeInsets.only(bottom: 41.v),
                      ),
                      Container(
                        width: 131.h,
                        margin: EdgeInsets.only(left: 13.h),
                        child: Text(
                          "Near, Police Station, Sarkhej Makarba Road, Sarkhej Roza Rd, Sarkhej, Ahmedabad, Gujarat 382210",
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallRhodiumLibreOnError,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.v),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgTeenyiconsShopSolid,
                        height: 9.adaptSize,
                        width: 9.adaptSize,
                        margin: EdgeInsets.only(
                          top: 2.v,
                          bottom: 4.v,
                        ),
                      ),
                      Container(
                        width: 35.h,
                        margin: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "2 years.",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallRhodiumLibreOnError9,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgStreamlineUser,
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                        margin: EdgeInsets.only(
                          top: 2.v,
                          bottom: 1.v,
                        ),
                      ),
                      Container(
                        width: 45.h,
                        margin: EdgeInsets.only(left: 12.h),
                        child: Text(
                          "unverified",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallRhodiumLibreOnError9,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRectangle38,
              height: 188.v,
              width: 125.h,
              radius: BorderRadius.circular(
                40.h,
              ),
              margin: EdgeInsets.only(bottom: 5.v),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyEight(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 22.h,
          right: 12.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 39.h,
                vertical: 29.v,
              ),
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 19.v),
                  Text(
                    "pic",
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 25.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 73.h,
                    margin: EdgeInsets.only(top: 10.v),
                    child: Text(
                      "Name:\nPrice:\nProduct name:\nuses:",
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallRhodiumLibreOnError_1,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgNotification,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(
                      left: 88.h,
                      bottom: 59.v,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyEight(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 198.v,
        width: 303.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 198.v,
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
                return SeventysixItemWidget();
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 6.v,
                margin: EdgeInsets.only(bottom: 7.v),
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
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFortySeven(
    BuildContext context, {
    required String pic,
    required String namePriceProduct,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 39.h,
            vertical: 25.v,
          ),
          decoration: AppDecoration.fillBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 27.v),
              Text(
                pic,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.onError.withOpacity(1),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 73.h,
          margin: EdgeInsets.only(
            left: 35.h,
            top: 15.v,
            bottom: 20.v,
          ),
          child: Text(
            namePriceProduct,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodySmallRhodiumLibreOnError_1.copyWith(
              color: theme.colorScheme.onError.withOpacity(1),
            ),
          ),
        ),
      ],
    );
  }
}
