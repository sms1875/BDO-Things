import 'package:bdo_things/presentation/controllers/home/coupon_controller.dart';
import 'package:bdo_things/presentation/widgets/home/event_banner_widget.dart';
import 'package:bdo_things/presentation/widgets/home/event_calendar_widget.dart';
import 'package:flutter/material.dart';

import 'coupon_table_widget.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    Widget leftWidget = Wrap(
      direction: Axis.vertical,
      spacing: 10.0,
      children: [
        Container(
          color: Colors.green,
          child: Text('왼쪽 배너'),
          height: 400,
          width: 300,
        ),
        Container(
          color: Colors.white,
          child: Text('왼쪽 아래 배너'),
          height: 300,
          width: 300,
        ),
      ],
    );

    Widget centerWidget = Wrap(
      direction: Axis.vertical,
      spacing: 10.0,
      children: [
        Container(
          color: Colors.white,
          child: Text('중앙 배너'),
          height: 600,
          width: 600,
        ),
        Container(
          color: Colors.white,
          child: Text('중앙 아래 배너'),
          height: 600,
          width: 600,
        ),
      ],
    );

    Widget rightWidget = Wrap(
      direction: Axis.vertical,
      spacing: 10.0,
      children: [
        SizedBox(
          height: 200,
          width: 300,
          child: CouponTableWidget(),
        ),
        EventBannerWidget(),
        SizedBox(
          width: 300,
          child: EventCalendarWidget(),
        ),
      ],
    );

    if (screenWidth <= 1200) {
      return Column(
        children: [
          centerWidget,
          leftWidget,
          rightWidget,
        ],
      );
    } else {
      return Wrap(
        spacing: 10.0,
        runSpacing: 10.0,
        alignment: WrapAlignment.center,
        children: [
          Wrap(
            direction: Axis.horizontal,
            spacing: 10.0,
            runAlignment: WrapAlignment.start,
            children: [
              leftWidget,
              centerWidget,
              rightWidget,
            ],
          ),
        ],
      );
    }
  }
}