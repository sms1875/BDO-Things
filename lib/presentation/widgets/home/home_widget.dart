import 'package:bdo_things/presentation/controllers/home/coupon_controller.dart';
import 'package:bdo_things/presentation/widgets/home/event_banner_widget.dart';
import 'package:bdo_things/presentation/widgets/home/event_calendar_widget.dart';
import 'package:flutter/material.dart';

import 'coupon_table_widget.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.0,
      runSpacing: 10.0,
      alignment: WrapAlignment.end,
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child:
              Column(
                children: [
                  SizedBox(
                    height: 200,
                    width: 300,
                    child: CouponTableWidget(),
                  ),
                  SizedBox(height: 10),
                  EventBannerWidget(),
                  SizedBox(height: 10),
                  EventCalendarWidget(),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: Text('중앙 배너'),
                    height: 600,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    color: Colors.green,
                    child: Text('오른쪽 배너'),
                    height: 300,
                  ),
                  SizedBox(height: 10),
                  Container(
                    color: Colors.white,
                    child: Text('오른쪽 아래 배너'),
                    height: 300,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}