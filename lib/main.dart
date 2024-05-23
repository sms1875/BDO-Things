import 'package:bdo_things/provider/design_calculate_provider.dart';
import 'package:bdo_things/common_route_observer.dart';
import 'package:bdo_things/screen/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(const MyApp());
}

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => DesignCalculateProvider()
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorObservers: [CommonRouteObserver()],
        initialRoute: 'Home',
        routes: {
          '/': (_) => const HomePage(),
          'Home': (_) => const HomePage(),
          }),
    );
  }
}
