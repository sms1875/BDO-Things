import 'package:flutter/material.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(39, 39, 39, 1),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 300,
                        height: 120,
                        decoration: BoxDecoration(
                          color : Color.fromRGBO(60, 60, 60, 1),
                        ),
                        child: Row(
                            children:[
                              Container(
                                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Image.asset('images/ProcessingTrade.png'),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child: Text(
                                    '가공무역 계산기',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'Sora',
                                        fontSize: 24,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.normal,
                                        height: 3
                                    ),
                                  )
                              ),
                            ]
                        ),
                      )
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
