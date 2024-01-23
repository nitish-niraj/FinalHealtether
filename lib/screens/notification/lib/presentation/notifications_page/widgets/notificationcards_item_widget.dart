import 'package:flutter/material.dart';
import 'package:notification/core/app_export.dart';

// ignore: must_be_immutable
class NotificationcardsItemWidget extends StatelessWidget {
  const NotificationcardsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineGrayB.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Text(
            "Payments",
            style: TextStyle(
              color: appTheme.lime900,
              fontSize: 16.fSize,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 9.v),
          Container(
            width: 296.h,
            margin: EdgeInsets.only(right: 37.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "You have received payment from ",
                    style: theme.textTheme.bodyLarge,
                  ),
                  TextSpan(
                    text: "Krishna Murthy",
                    style: theme.textTheme.titleMedium,
                  ),
                  TextSpan(
                    text: " ₹250/- consultation fees.",
                    style: theme.textTheme.bodyLarge,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              " a moment ago",
              style: TextStyle(
                color: appTheme.gray800Cc,
                fontSize: 12.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
