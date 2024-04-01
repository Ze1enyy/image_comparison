import 'dart:typed_data';

import 'package:image_comparison/data/gateway/image_comparison_gateway.dart';
import 'package:image_comparison/data/service/image_comparison_service.dart';

class ImageComparisonRepository implements ImageComparisonService {
  final ImageComparisonGateway _gateway;

  ImageComparisonRepository(this._gateway);

  @override
  bool areImagesIdentical({
    required Uint8List firstImageBytes,
    required Uint8List secondImageBytes,
  }) {
    return _gateway.areImagesIdentical(
      firstImageBytes: firstImageBytes,
      secondImageBytes: secondImageBytes,
    );
  }
}
