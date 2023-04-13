import 'package:bdo_things/presentation/controllers/home/coupon_controller.dart';
import 'package:flutter/material.dart';
import 'package:bdo_things/domain/entities/coupon.dart';

class CouponItemWidget extends StatelessWidget {
  CouponItemWidget({
    Key? key,
    required this.coupon,
  }) : super(key: key);

  final Coupon coupon;
  final CouponController _couponController = CouponController.instance;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final success = _couponController.copyCoupon(coupon.code);
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
                _couponController.getRemainingTime(coupon.expiry),
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}