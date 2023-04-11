import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../data/coupons_widget_data.dart';
import '../../utils/constants.dart';

class CouponTableWidget extends StatelessWidget {
  const CouponTableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.widgetBackgroundColor,
      height: 200,
      width: 300,
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
              itemCount: couponList.length,
              itemBuilder: (context, index) {
                final coupon = couponList[index];
                return InkWell(
                  onTap: () {
                    Clipboard.setData(ClipboardData(text: coupon['code']));
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Coupon copied!')),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text(
                            coupon['code'],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            '${(coupon['expiry'].difference(DateTime.now()).inDays < 1) ? ((coupon['expiry'].difference(DateTime.now()).inHours < 1) ? '${coupon['expiry'].difference(DateTime.now()).inMinutes} minutes' : '${coupon['expiry'].difference(DateTime.now()).inHours} hours') : '${coupon['expiry'].difference(DateTime.now()).inDays} days'} left',
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
