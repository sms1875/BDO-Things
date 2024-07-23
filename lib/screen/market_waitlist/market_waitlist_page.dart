import 'package:bdo_things/screen/market_waitlist/market_waitlist_widget.dart';
import 'package:flutter/material.dart';

class MarketWaitlistPage extends StatelessWidget {
  const MarketWaitlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('market waitlist'),
      ),
      body: ListView(
        children: [
          MarketWaitListWidget()
        ],
      ),
    );
  }
}