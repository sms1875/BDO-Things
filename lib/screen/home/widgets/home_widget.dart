import 'package:bdo_things/screen/base/base_widget.dart';
import 'package:bdo_things/screen/home/widgets/event_banner_widget.dart';
import 'package:bdo_things/screen/home/widgets/event_calendar_widget.dart';
import 'package:flutter/material.dart';

import 'coupon_table_widget.dart';

class HomeWidget extends BaseWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget buildCenterWidget() {
    return  Wrap(
      direction: Axis.vertical,
      spacing: 10.0,
      children: [
        SizedBox(
          height: 600,
          width: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.close, color: Colors.white, size: 60),
              SizedBox(height: 20),
              Text("구현 예정입니다", style: TextStyle(color: Colors.white, fontSize: 20)),
            ],
          ),
        ),
        SizedBox(
          height: 600,
          width: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.close, color: Colors.white, size: 60),
              SizedBox(height: 20),
              Text("구현 예정입니다", style: TextStyle(color: Colors.white, fontSize: 20)),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget buildLeftWidget() {
    return Wrap(
      direction: Axis.vertical,
      spacing: 10.0,
      children: [
        SizedBox(
          height: 400,
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.close, color: Colors.white, size: 60),
              SizedBox(height: 20),
              Text("구현 예정입니다", style: TextStyle(color: Colors.white, fontSize: 20)),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget buildRightWidget() {
    return Wrap(
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
  }
}