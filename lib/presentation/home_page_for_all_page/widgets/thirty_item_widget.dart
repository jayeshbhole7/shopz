import 'package:flutter/material.dart';
import 'package:jayesh_s_application2/core/app_export.dart';

class advertisement extends StatelessWidget {
  const advertisement({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(89.h, 45.v, 92.h, 49.v),
      child: Text(
        "advertisement",
        style: theme.textTheme.titleLarge,
      ),
    );
  }
}
