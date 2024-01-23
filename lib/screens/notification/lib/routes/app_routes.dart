import 'package:flutter/material.dart';
import 'package:notification/presentation/notifications_container_screen/notifications_container_screen.dart';
import 'package:notification/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String notificationsPage = '/notifications_page';

  static const String notificationsContainerScreen =
      '/notifications_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    notificationsContainerScreen: (context) => NotificationsContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
