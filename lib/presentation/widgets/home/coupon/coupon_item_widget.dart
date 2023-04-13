import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:bdo_things/domain/entities/coupon.dart';

class CouponItemWidget extends StatelessWidget {
  const CouponItemWidget({
    Key? key,
    required this.coupon,
  }) : super(key: key);

  final Coupon coupon;

  /// 쿠폰 만료일로부터 남은 시간을 계산하여 문자열로 반환합니다.
  /// 만료일이 지났거나, 예외가 발생한 경우 'N/A'를 반환합니다.
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

  /// 쿠폰 코드를 클립보드에 복사하고, 스낵바를 이용하여 복사 완료 메시지를 출력합니다.
  /// 쿠폰 코드가 비어있는 경우 아무 작업도 수행하지 않습니다.
  void copyCoupon(BuildContext context, String code) {
    if (code.isEmpty) return;

    Clipboard.setData(ClipboardData(text: code));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('쿠폰이 복사되었습니다!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => copyCoupon(context, coupon.code),
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
}
