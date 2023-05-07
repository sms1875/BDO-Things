import 'package:bdo_things/provider/coupon_provider.dart';
import 'package:bdo_things/provider/event_provider.dart';
import 'package:bdo_things/provider/trade_crate_calculator_provider.dart';
import 'package:bdo_things/route_observer.dart';
import 'package:bdo_things/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
/*
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform
  );
*/
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
            create: (_) => CouponProvider()..update()
        ),
        ChangeNotifierProvider(
            create: (_) => TradeCrateCalculatorProvider()..update()
        ),
        ChangeNotifierProvider(
            create: (_) => EventProvider()..update()
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorObservers: [CommonRouteObserver()],
        initialRoute: 'Home',
        routes: routes(context),
      ),
    );
  }
}