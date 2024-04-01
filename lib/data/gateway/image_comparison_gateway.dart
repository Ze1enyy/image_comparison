import 'dart:typed_data';

class ImageComparisonGateway {
  bool areImagesIdentical({
    required Uint8List firstImageBytes,
    required Uint8List secondImageBytes,
  }) {
    if (firstImageBytes.length != secondImageBytes.length) return false;

    for (int i = 0; i < firstImageBytes.length; i++) {
      if (firstImageBytes[i] != secondImageBytes[i]) return false;
    }

    return true;
  }
}
