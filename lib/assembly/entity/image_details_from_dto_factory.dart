import 'dart:typed_data';

import 'package:image_comparison/assembly/factory.dart';
import 'package:image_comparison/data/model/image_details_dto.dart';
import 'package:image_comparison/domain/entity/image_details.dart';

class ImageDetailsFromDtoFactory
    implements Factory<ImageDetails, ImageDetailsDto> {
  @override
  ImageDetails create(ImageDetailsDto param) => ImageDetails(
        bytes: param.bytes ?? Uint8List(0),
        extension: param.extension ?? 'Unknown',
        width: param.width ?? 0,
        height: param.height ?? 0,
        orientation: param.orientation ?? 'Unknown',
        creationTime: param.creationTime ?? DateTime(1970, 12, 12),
      );
}
