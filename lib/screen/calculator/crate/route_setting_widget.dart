import 'package:bdo_things/screen/common/widget/dropdown_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bdo_things/constants.dart';
import 'package:bdo_things/provider/trade_routes_provider.dart';

class RouteSettingWidget extends StatelessWidget {
  const RouteSettingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final tradeRoutesProvider = Provider.of<TradeRoutesProvider>(context);

    return Column(
      children: [
        DropdownTile(
          title: '생산지',
          selectedValue: tradeRoutesProvider.origin,
          onChanged: tradeRoutesProvider.setOrigin,
          options: CONSTANTS.groupedRoutes,
        ),
        DropdownTile(
          title: '판매지',
          selectedValue: tradeRoutesProvider.destination,
          onChanged: tradeRoutesProvider.setDestination,
          options: CONSTANTS.groupedRoutes,
        ),
      ],
    );
  }
}