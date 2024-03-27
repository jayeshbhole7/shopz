import 'package:jayesh_s_application2/widgets/custom_rating_bar.dart';
import 'package:jayesh_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter/material.dart';
import 'package:jayesh_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class SixtynineItemWidget extends StatelessWidget {
  const SixtynineItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        motion: ScrollMotion(),
        extentRatio: 4.72,
        dragDismissible: false,
        children: [
          SizedBox(
            height: 191.v,
            child: CustomImageView(
              imagePath: ImageConstant.imgRectangle50,
              height: 187.v,
              width: 141.h,
              radius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
        ],
      ),
      child: SizedBox(
        height: 191.v,
        width: 141.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle36,
              height: 191.v,
              width: 141.h,
              radius: BorderRadius.circular(
                5.h,
              ),
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 3.h),
                    decoration: AppDecoration.fillBlackB.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 1.v),
                        Padding(
                          padding: EdgeInsets.only(right: 2.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Shop",
                                style: theme.textTheme.bodySmall,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 3.v),
                                child: CustomRatingBar(
                                  ignoreGestures: true,
                                  initialRating: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 3.v),
                        Padding(
                          padding: EdgeInsets.only(right: 2.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgVector,
                                height: 6.v,
                                width: 4.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Text(
                                  "1.2 km",
                                  style: CustomTextStyles.reggaeOnePrimary,
                                ),
                              ),
                              Spacer(),
                              CustomImageView(
                                imagePath: ImageConstant.imgMingcuteTimeFill,
                                height: 6.adaptSize,
                                width: 6.adaptSize,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Text(
                                  "12:02 pm",
                                  style: CustomTextStyles.reggaeOnePrimary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 133.v),
                  _buildBookNow(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBookNow(BuildContext context) {
    return CustomElevatedButton(
      text: "Book Now",
    );
  }
}
