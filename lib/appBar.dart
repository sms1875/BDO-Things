import 'package:flutter/material.dart';
import 'dart:math' as math;

class appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator HomepagedesktopWidget - FRAME
    return Container(
        width: 1440,
        height: 1688,
        decoration: BoxDecoration(
          color : Color.fromRGBO(39, 39, 39, 1),
        ),
        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 27,
                  left: 89.13780212402344,
                  child: Container(
                      width: 1209.727294921875,
                      height: 100,
                      decoration: BoxDecoration(

                      ),
                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 700,
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
                                top: 100,
                                left: 0,
                                child: Transform.rotate(
                                  angle: 1.4033419209422001e-14 * (math.pi / 180),
                                  child: Divider(
                                      color: Color.fromRGBO(76, 76, 76, 1),
                                      thickness: 1
                                  )
                                  ,
                                )
                            ),Positioned(
                                top: 25,
                                left: 1,
                                child: Container(
                                    width: 141,
                                    height: 30,
                                    decoration: BoxDecoration(

                                    ),
                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Text('검은사막 도구', textAlign: TextAlign.left, style: TextStyle(
                                                  color: Color.fromRGBO(255, 255, 255, 1),
                                                  fontFamily: 'Poppins',
                                                  fontSize: 24,
                                                  letterSpacing: 0.5,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.25
                                              ),)
                                          ),
                                        ]
                                    )
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
