import 'dart:typed_data';

import 'package:flutter/material.dart';

class FetchWebpImageWidget extends StatelessWidget {
  final Future<Uint8List> imageFuture;

  const FetchWebpImageWidget({
    required this.imageFuture,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Uint8List>(
      future: imageFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError || !snapshot.hasData) {
          return const Center(
            child: Icon(Icons.error, size: 40),
          );
        } else {
          return Image.memory(
            snapshot.data!,
            fit: BoxFit.cover,
          );
        }
      },
    );
  }
}
