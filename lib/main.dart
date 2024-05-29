import 'package:bdo_things/provider/crate_design_provider.dart';
import 'package:bdo_things/provider/life_skill_level_provider.dart';
import 'package:bdo_things/provider/trade_routes_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TradeRoutesProvider()),
        ChangeNotifierProvider(create: (_) => CrateDesignProvider()),
        ChangeNotifierProvider(create: (_) => LifeSkillLevelProvider()),
      ],
      child: MaterialApp.router(
        routerConfig: router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}