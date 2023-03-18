import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
          body: ListView(
            children: [
              HomepagedesktopWidget(),
            ],
          ),
        )
    );
  }
}


class HomepagedesktopWidget extends StatelessWidget {
  const HomepagedesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator HomepagedesktopWidget - FRAME
    return Container(
        width: 1506,
        height: 3106,
        decoration: BoxDecoration(
          color : Color.fromRGBO(39, 39, 39, 1),
        ),
        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      width: 1506,
                      height: 160,
                      decoration: BoxDecoration(

                      ),
                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 1440,
                                    height: 160,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(196, 196, 196, 1),
                                    )
                                )
                            ),Positioned(
                                top: 52,
                                left: 151,
                                child: Text('검은사막 도구', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Poppins',
                                    fontSize: 24,
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.normal,
                                    height: 1.25
                                ),)
                            ),Positioned(
                                top: 16,
                                left: 668,
                                child: Container(
                                  decoration: BoxDecoration(

                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,

                                    children: <Widget>[
                                      Text('Home', textAlign: TextAlign.right, style: TextStyle(
                                          color: Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Inter',
                                          fontSize: 16,
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.normal,
                                          height: 5.03125
                                      ),), SizedBox(width : 64),
                                      Text('Language', textAlign: TextAlign.right, style: TextStyle(
                                          color: Color.fromRGBO(209, 209, 209, 1),
                                          fontFamily: 'Inter',
                                          fontSize: 16,
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.normal,
                                          height: 5.03125
                                      ),), SizedBox(width : 64),
                                      Text('Server', textAlign: TextAlign.right, style: TextStyle(
                                          color: Color.fromRGBO(209, 209, 209, 1),
                                          fontFamily: 'Inter',
                                          fontSize: 16,
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.normal,
                                          height: 5.03125
                                      ),), SizedBox(width : 64),
                                      Text('Setting', textAlign: TextAlign.right, style: TextStyle(
                                          color: Color.fromRGBO(209, 209, 209, 1),
                                          fontFamily: 'Inter',
                                          fontSize: 16,
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.normal,
                                          height: 5.03125
                                      ),),

                                    ],
                                  ),
                                )
                            ),Positioned(
                                top: 127,
                                left: 150,
                                child: Transform.rotate(
                                  angle: 1.4033419209422001e-14 * (math.pi / 180),
                                  child: Divider(
                                      color: Color.fromRGBO(76, 76, 76, 1),
                                      thickness: 1
                                  )
                                  ,
                                )
                            ),
                          ]
                      )
                  )
              ),
              Positioned(
                  top: 297,
                  left: 188,
                  child: Container(
                      width: 1142,
                      height: 379,
                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 7,
                                left: 2,
                                child: Text('Tools', textAlign: TextAlign.left,  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Sora',
                                    fontSize: 48,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.normal,
                                    height: 1.1666666666666667),
                                )
                            ),
                            Positioned(
                                top: 97,
                                left: 3,
                                child: SizedBox(
                                    width: 554,
                                    height: 282,
                                    child: ToolSelector(toolName: '가공무역 계산기', toolImage: 'ProcessingTrade')
                                )
                            ),
                            Positioned(
                                top: 97,
                                left: 589,
                                child: SizedBox(
                                    width: 554,
                                    height: 282,
                                    child: ToolSelector(toolName: '추가 예정입니다', toolImage: 'ProcessingTrade')
                                )
                            ),
                          ]
                      )
                  )
              ),
            ]
        )
    );
  }
}


class ToolSelector extends StatelessWidget{
  const ToolSelector({Key? key, required this.toolName, required this.toolImage}) : super(key: key);

  final String toolName,toolImage;

  @override
  Widget build(BuildContext context){
    return Stack(
        children: <Widget>[
          Positioned(
              top: 0,
              left: -1,
              child: Container(
                  width: 556,
                  height: 282,
                  decoration: BoxDecoration(
                    borderRadius : BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color : Color.fromRGBO(60, 60, 60, 1),
                  ),
                  child: Image.asset('images/$toolImage.png')
              )
          ),
          Positioned(
              top: 24,
              left: 39,
              child: Text(toolName, textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Sora',
                  fontSize: 28,
                  letterSpacing: 1,
                  fontWeight: FontWeight.normal,
                  height: 2.5714285714285716
                ),
              )
          ),
        ]
    );
  }
}
