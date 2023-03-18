import 'package:flutter/material.dart';
import 'tool_detail_page.dart';

class ToolWidget extends StatelessWidget {
  final String toolName, toolImage;

  ToolWidget({Key? key, required this.toolName, required this.toolImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ToolDetailPage(
              toolName: toolName,
              toolImage: toolImage,
            ),
          ),
        );
      },
      child: buildToolWidget(),
    );
  }

  Widget buildToolWidget() {
    return Container(
      width: 350,
      height: 80,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(60, 60, 60, 1),
      ),
      child: Row(
        children: [
          buildImageWidget(),
          Flexible(
            fit: FlexFit.tight,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                toolName,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Sora',
                  fontSize: 16,
                  letterSpacing: 1,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildImageWidget() {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/$toolImage.png'),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
