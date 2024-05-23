import 'package:bdo_things/screen/base/base_widget.dart';
import 'package:flutter/material.dart';

class HomeWidget extends BaseWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget buildCenterWidget() {
    return  Wrap(
      direction: Axis.vertical,
      spacing: 10.0,
      children: [
        SizedBox(
          height: 800,
          width: 800,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget buildLeftWidget() {
    return Wrap(
      direction: Axis.vertical,
      spacing: 10.0,
      children: [
      ],
    );
  }

  @override
  Widget buildRightWidget() {
    return Wrap(
      direction: Axis.vertical,
      spacing: 10.0,
      children: [
      ],
    );
  }
}
