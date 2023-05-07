import 'dart:convert';

import 'package:bdo_things/constants.dart';
import 'package:bdo_things/data/coupon.dart';
import 'package:http/http.dart' as http;


class CouponRepository  {
  static const String FIRESTORE_URL = CONSTANTS.FIRESTORE_URL;
  static const String _couponEndpoint = '/coupon';

  Future<List<Coupon>> getCoupons() async {
    try {
      final response = await http.get(Uri.parse(FIRESTORE_URL + _couponEndpoint));
      if (response.statusCode == 200) {
        final decodedData = jsonDecode(response.body) as Map<String, dynamic>;
        final couponList = (decodedData['documents'] as List)
            .map((document) => Coupon.fromMap(document['fields']))
            .toList();
        return couponList;
      } else {
        throw 'ServerException: ${response.statusCode}';
      }
    } on Exception catch (e) {
      throw 'CouponException: $e';
    } catch (e) {
      throw 'ServerException: $e';
    }
  }
}