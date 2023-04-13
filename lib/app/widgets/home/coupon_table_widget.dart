import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

import '../../../data/constants.dart';
import '../../../domain/entities/coupon.dart';


class CouponTableWidget extends StatefulWidget {
  const CouponTableWidget({Key? key}) : super(key: key);

  @override
  _CouponTableWidgetState createState() => _CouponTableWidgetState();
}

class _CouponTableWidgetState extends State<CouponTableWidget> {
  late Future<List<Coupon>> _couponFuture;

  @override
  void initState() {
    super.initState();
    _couponFuture = _fetchCouponData();
  }

  Future<List<Coupon>> _fetchCouponData() async {
    final response = await http.get(
      Uri.parse(
        'https://firestore.googleapis.com/v1/projects/bdothings/databases/(default)/documents/coupon',
      ),
    );
    if (response.statusCode == 200) {
      final decodedData = jsonDecode(response.body) as Map<String, dynamic>;
      final couponList = (decodedData['documents'] as List)
          .map((document) => Coupon.fromMap(document['fields']))
          .toList();
      return couponList;
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Coupon>>(
        future: _couponFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return Center(child: Text('No data found'));
          } else {
            final couponList = snapshot.data!;
            return Container(
              color: Constants.widgetBackgroundColor,
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
                      },
                    ),
                  ),
                ],
              ),
            );
          }
        });
  }

  String getRemainingTime(DateTime? expiry) {
    try {
      final diff = expiry!.difference(DateTime.now());
      if (diff.inDays >= 1) {
        return '${diff.inDays} days left';
      } else if (diff.inHours >= 1) {
        return '${diff.inHours} hours left';
      } else {
        return '${diff.inMinutes} minutes left';
      }
    } catch (e) {
      return 'N/A';
    }
  }

// 쿠폰 복사 및 알림 메시지 출력 함수
  void copyCoupon(BuildContext context, String code) {
    Clipboard.setData(ClipboardData(text: code));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Coupon copied!')),
    );
  }
}