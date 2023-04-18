import 'package:bdo_things/presentation/base/base_widget.dart';
import 'package:bdo_things/presentation/controllers/home/coupon_controller.dart';
import 'package:bdo_things/presentation/widgets/home/event_banner_widget.dart';
import 'package:bdo_things/presentation/widgets/home/event_calendar_widget.dart';
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
        banner('중앙 배너', 600, 600),
        banner('중앙 아래 배너', 600, 600),
      ],
    );
  }

  @override
  Widget buildLeftWidget() {
    return Wrap(
      direction: Axis.vertical,
      spacing: 10.0,
      children: [
        banner('왼쪽 배너', 400, 300),
        banner('왼쪽 아래 배너', 300, 300),
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