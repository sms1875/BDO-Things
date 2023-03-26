import 'dart:io';
import 'package:bdo_things/pages/home_page.dart';
import 'package:bdo_things/utils/route_observer.dart';
import 'package:bdo_things/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  if (Platform.isWindows) {
    WindowManager.instance.setMinimumSize(const Size(600, 480));
    WindowManager.instance.setMaximizable(true);
  }
  runApp(const MyApp());
}

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          navigatorObservers: [CommonRouteObserver()],
          
          initialRoute: '/',
          routes: routes(context),
        );
      },
    );
  }
}