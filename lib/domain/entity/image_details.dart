import 'dart:typed_data';

class ImageDetails {
  final Uint8List bytes;
  final int width;
  final int height;
  final String orientation;
  final String extension;
  final DateTime creationTime;

  String get imageSize => '$width x $height';

  ImageDetails({
    required this.bytes,
    required this.width,
    required this.height,
    required this.orientation,
    required this.extension,
    required this.creationTime,
  });
}
