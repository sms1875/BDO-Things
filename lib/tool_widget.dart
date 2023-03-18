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
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            'images/$toolImage.png',
            width: 60,
            height: 60,
          ),
          SizedBox(width: 20),
          Text(
            toolName,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}