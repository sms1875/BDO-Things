import 'package:bdo_things/screen/calculator/crate/crate_calculator_page.dart';
import 'package:bdo_things/screen/calculator/crate/crate_detail_page.dart';
import 'package:bdo_things/screen/home_page.dart';
import 'package:bdo_things/screen/market_waitlist/market_waitlist_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/calculator/crate',
      builder: (context, state) => const CrateCalculatorPage(),
    ),
    GoRoute(
      path: '/calculator/mount',
      builder: (context, state) => const CrateCalculatorPage(),
    ),
    GoRoute(
      path: '/waitlist',
      builder: (context, state) => const MarketWaitlistPage(),
    ),
    GoRoute(
      path: '/calculator/crate/:id',
      builder: (context, state) {
        final id = int.parse(state.pathParameters['id']!);
        return CrateDetailPage(designId: id);
      },
    ),
  ],
);