import 'package:flutter/material.dart';
import 'package:jayesh_s_application2/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgTablerHomeFilled,
      activeIcon: ImageConstant.imgTablerHomeFilled,
      type: BottomBarEnum.Tablerhomefilled,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgTelevision,
      activeIcon: ImageConstant.imgTelevision,
      type: BottomBarEnum.Television,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMegaphone,
      activeIcon: ImageConstant.imgMegaphone,
      type: BottomBarEnum.Megaphone,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMingcuteHistoryFill,
      activeIcon: ImageConstant.imgMingcuteHistoryFill,
      type: BottomBarEnum.Mingcutehistoryfill,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSolarWalletBold,
      activeIcon: ImageConstant.imgSolarWalletBold,
      type: BottomBarEnum.Solarwalletbold,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 351.h,
          child: Divider(),
        ),
        SizedBox(
          height: 42.v,
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedFontSize: 0,
            elevation: 0,
            currentIndex: selectedIndex,
            type: BottomNavigationBarType.fixed,
            items: List.generate(bottomMenuList.length, (index) {
              return BottomNavigationBarItem(
                icon: CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  color: appTheme.gray700,
                ),
                activeIcon: CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 37.v,
                  width: 36.h,
                  color: appTheme.gray70002,
                ),
                label: '',
              );
            }),
            onTap: (index) {
              selectedIndex = index;
              widget.onChanged?.call(bottomMenuList[index].type);
              setState(() {});
            },
          ),
        ),
      ],
    );
  }
}

enum BottomBarEnum {
  Tablerhomefilled,
  Television,
  Megaphone,
  Mingcutehistoryfill,
  Solarwalletbold,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
