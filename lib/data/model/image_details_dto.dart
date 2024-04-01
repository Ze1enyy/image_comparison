import 'dart:typed_data';

class ImageDetailsDto {
  final Uint8List? bytes;
  final int? width;
  final int? height;
  final String? extension;
  final String? orientation;
  final DateTime? creationTime;

  ImageDetailsDto({
    required this.bytes,
    required this.width,
    required this.height,
    required this.extension,
    required this.orientation,
    required this.creationTime,
  });
}
