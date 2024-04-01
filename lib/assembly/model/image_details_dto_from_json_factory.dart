import 'dart:typed_data';

import 'package:exif/exif.dart';
import 'package:image_comparison/assembly/factory.dart';
import 'package:image_comparison/data/model/image_details_dto.dart';
import 'package:image_comparison/utils/date_time_utils.dart';

class ImageDetailsDtoFromJsonFactory
    implements Factory<ImageDetailsDto, Map<String, dynamic>> {
  @override
  ImageDetailsDto create(Map<String, dynamic> param) => ImageDetailsDto(
        bytes: param['bytes'] as Uint8List?,
        extension: param['extension'] as String?,
        width: int.tryParse((param['Image ImageWidth'] as IfdTag).printable),
        height: int.tryParse((param['Image ImageLength'] as IfdTag).printable),
        orientation: (param['Image Orientation'] as IfdTag).printable,
        creationTime: DateTimeUtils.yyyyMMddHHmmss
            .tryParse((param['Image DateTime'] as IfdTag).printable),
      );
}
