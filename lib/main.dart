import 'dart:io';
import 'package:bdo_things/pages/tools_page.dart';
import 'package:bdo_things/utils/route_observer.dart';
import 'package:bdo_things/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

void main() async {

  try
  { if (Platform.isWindows) {
    WidgetsFlutterBinding.ensureInitialized();
    await windowManager.ensureInitialized();
    WindowManager.instance.setMinimumSize(const Size(600, 480));
    WindowManager.instance.setMaximizable(true);
  }
  }
  catch(e)
  {
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
          initialRoute: 'Home',
          routes: routes(context),
        );
      },
    );
  }
}