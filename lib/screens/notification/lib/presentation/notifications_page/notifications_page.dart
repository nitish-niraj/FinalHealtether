import '../notifications_page/widgets/notificationcards_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:notification/core/app_export.dart';
import 'package:notification/widgets/app_bar/appbar_leading_image.dart';
import 'package:notification/widgets/app_bar/appbar_title.dart';
import 'package:notification/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.v),
              Text(
                "112 notifications found ",
                style: TextStyle(
                  color: appTheme.blueGray400,
                  fontSize: 12.fSize,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 6.v),
              _buildNotificationCards(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 60.v,
          bottom: 9.v,
        ),
      ),
      title: AppbarTitle(
        text: "Notifications",
        margin: EdgeInsets.only(
          left: 8.h,
          top: 59.v,
          bottom: 8.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationCards(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 8.v,
          );
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return NotificationcardsItemWidget();
        },
      ),
    );
  }
}
