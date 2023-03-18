import 'package:flutter/material.dart';

class ToolDetailPage extends StatefulWidget {
  final String toolName;
  final String toolImage;

  ToolDetailPage({required this.toolName, required this.toolImage});

  @override
  _ToolDetailPageState createState() => _ToolDetailPageState();
}

class _ToolDetailPageState extends State<ToolDetailPage> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.toolName),
      ),
      body: PageView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Scaffold(
            body: Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/${widget.toolImage}.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}