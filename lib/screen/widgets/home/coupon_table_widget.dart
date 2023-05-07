import 'package:bdo_things/provider/coupon_provider.dart';
import 'package:flutter/material.dart';

import 'package:bdo_things/constants.dart';
import 'package:bdo_things/data/coupon.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class CouponTableWidget extends StatelessWidget {
  const CouponTableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CouponProvider>(
      builder: (context, provider, child) {
        final List<Coupon> couponList = provider.coupons;
        couponList.sort((a,b) => a.expiry.compareTo(b.expiry));
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
                  itemCount: couponList.length,
                  itemBuilder: (context, index) {
                    return couponItemWidget(couponList[index], context);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget couponItemWidget(Coupon coupon,BuildContext context) {
    return GestureDetector(
      onTap: () {
        final success = copyCoupon(coupon.code);
        if (success) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('쿠폰이 복사되었습니다!')),
          );
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 2,
              child: Text(
                coupon.code,
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
                getRemainingTime(coupon.expiry),
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool copyCoupon(String code) {
    if (code.isEmpty) return false;

    Clipboard.setData(ClipboardData(text: code));
    return true;
  }

  String getRemainingTime(DateTime? expiry) {
    if (expiry == null || expiry.isBefore(DateTime.now())) {
      return 'N/A';
    }

    final diff = expiry.difference(DateTime.now());
    if (diff.inDays >= 1) {
      return '${diff.inDays}일 남음';
    } else if (diff.inHours >= 1) {
      return '${diff.inHours}시간 남음';
    } else {
      return '${diff.inMinutes}분 남음';
    }
  }
}