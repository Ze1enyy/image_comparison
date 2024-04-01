import 'dart:typed_data';

import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  static const _size = 150.0;
  final Uint8List? imageBytes;
  const ImageContainer({required this.imageBytes, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
      ),
      padding: EdgeInsets.zero,
      child: Image.memory(
        imageBytes ?? Uint8List(0),
        height: _size,
        width: _size,
        fit: BoxFit.fill,
      ),
    );
  }
}
