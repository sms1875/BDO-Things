import 'package:flutter/material.dart';
import 'design_detail_widget.dart';

class CrateDetailPage extends StatefulWidget {
  final int designId;

  const CrateDetailPage({super.key, required this.designId});

  @override
  State<CrateDetailPage> createState() => _CrateDetailPageState();
}

class _CrateDetailPageState extends State<CrateDetailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          DesignDetailWidget(designId: widget.designId),
        ],
      ),
    );
  }
}
