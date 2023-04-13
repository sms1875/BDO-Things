import 'package:bdo_things/presentation/controllers/home/coupon_controller.dart';
import 'package:flutter/material.dart';

import 'package:bdo_things/data/constants.dart';
import 'package:bdo_things/domain/entities/coupon.dart';
import 'coupon_item_widget.dart';

class CouponTableWidget extends StatelessWidget {
  const CouponTableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CouponController _couponController = CouponController.instance;

    return FutureBuilder<List<Coupon>>(
      future: _couponController.getCouponList(),
      builder: (BuildContext context, AsyncSnapshot<List<Coupon>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error fetching data'));
        } else if (snapshot.data?.isEmpty ?? true) {
          return Center(child: Text('No data found'));
        } else {
          final List<Coupon> _couponList = snapshot.data!;
          return Container(
            color: CONSTANTS.WIDGET_BACKGROUND_COLOR,
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Coupons',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    itemCount: _couponList.length,
                    itemBuilder: (context, index) {
                      return CouponItemWidget(coupon: _couponList[index]);
                    },
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}