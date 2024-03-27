import 'package:flutter/material.dart';
import 'package:jayesh_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class SeventysixItemWidget extends StatelessWidget {
  const SeventysixItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 112.h,
          vertical: 45.v,
        ),
        decoration: AppDecoration.fillBlueGray,
        child: Column(
          children: [
            SizedBox(height: 84.v),
            Text(
              "shop Pics",
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
