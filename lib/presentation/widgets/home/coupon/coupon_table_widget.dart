import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:bdo_things/data/constants.dart';
import 'package:bdo_things/data/datasources/coupon_remote_datasource.dart';
import 'package:bdo_things/data/repositories/coupon_repository_impl.dart';
import 'package:bdo_things/domain/entities/coupon.dart';
import 'package:bdo_things/domain/repositories/coupon_repository.dart';
import 'package:bdo_things/domain/usecases/coupon_usecase.dart';
import 'coupon_item_widget.dart';


class CouponTableWidget extends StatefulWidget {
  const CouponTableWidget({Key? key}) : super(key: key);

  @override
  _CouponTableWidgetState createState() => _CouponTableWidgetState();
}

class _CouponTableWidgetState extends State<CouponTableWidget> {
  late final CouponRepository _couponRepository;
  late final CouponUseCase _couponUseCase;
  late final Future<List<Coupon>> _couponListFuture;

  @override
  void initState() {
    super.initState();
    _couponRepository = CouponRepositoryImpl(
      remoteDataSource: CouponRemoteDataSourceImpl(client: http.Client()),
    );
    _couponUseCase = CouponUseCase(couponRepository: _couponRepository);
    _couponListFuture = _couponUseCase.fetchCoupons();
  }


  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Coupon>>(
        future: _couponListFuture,
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
                        return CouponItemWidget(coupon: couponList[index]);
                      },
                    ),
                  ),
                ],
              ),
            );
          }
        });
  }
}
