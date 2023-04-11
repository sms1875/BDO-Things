import 'package:flutter/material.dart';
import 'events_banner_widget.dart';

class HomeWidget extends StatefulWidget {

  HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {


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
                    EventsBannerWidget(),
                    SizedBox(height: 10),
                    Container(
                      color: Colors.white,
                      child: Text('왼쪽 아래 배너'),
                      height: 300,
                    ),
                  ],
                )
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
