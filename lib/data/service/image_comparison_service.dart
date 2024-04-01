import 'dart:typed_data';

abstract class ImageComparisonService {
  bool areImagesIdentical({
    required Uint8List firstImageBytes,
    required Uint8List secondImageBytes,
  });
}
