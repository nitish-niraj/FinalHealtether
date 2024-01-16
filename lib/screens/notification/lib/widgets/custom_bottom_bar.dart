import 'package:flutter/material.dart';
import 'package:notification/core/app_export.dart';

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
      icon: ImageConstant.imgNavHome,
      activeIcon: ImageConstant.imgNavHome,
      title: "Home",
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavAppointments,
      activeIcon: ImageConstant.imgNavAppointments,
      title: "Appointments",
      type: BottomBarEnum.Appointments,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavChat,
      activeIcon: ImageConstant.imgNavChat,
      title: "Chat",
      type: BottomBarEnum.Chat,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavNotifications,
      activeIcon: ImageConstant.imgNavNotifications,
      title: "Notifications",
      type: BottomBarEnum.Notifications,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.v,
      decoration: BoxDecoration(
        color: appTheme.gray50,
        boxShadow: [
          BoxShadow(
            color: appTheme.greenA200.withOpacity(0.64),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -4,
            ),
          ),
        ],
      ),
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
            icon: Container(
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].icon,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    color: appTheme.gray900,
                    margin: EdgeInsets.only(top: 8.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 3.v,
                      bottom: 9.v,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: TextStyle(
                        color: appTheme.gray900,
                        fontSize: 12.fSize,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            activeIcon: Container(
              decoration: AppDecoration.fillGreenA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    color: appTheme.gray900,
                    margin: EdgeInsets.only(top: 9.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2.v,
                      bottom: 9.v,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: TextStyle(
                        color: appTheme.gray900,
                        fontSize: 12.fSize,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
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
    );
  }
}

enum BottomBarEnum {
  Home,
  Appointments,
  Chat,
  Notifications,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
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
