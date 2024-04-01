import 'package:exif/exif.dart';
import 'package:image_comparison/assembly/factory.dart';
import 'package:image_comparison/data/model/image_details_dto.dart';
import 'package:image_comparison/domain/entity/image_details.dart';
import 'package:image_picker/image_picker.dart';

class ImageUploadGateway {
  final ImagePicker _imagePicker;
  final Factory<ImageDetailsDto, Map<String, dynamic>> _jsonFactory;
  final Factory<ImageDetails, ImageDetailsDto> _dtoFactory;

  ImageUploadGateway(this._imagePicker, this._jsonFactory, this._dtoFactory);

  Future<ImageDetails?> uploadImageFromGallery() async {
    final image = await _imagePicker.pickImage(source: ImageSource.gallery);

    final path = image?.path;

    final extension = path?.split('.').last;

    if (image == null) return null;

    final bytes = await image.readAsBytes();
    final exif = await readExifFromBytes(bytes);
    final dto = _jsonFactory.create(
      {
        ...exif,
        'bytes': bytes,
        'extension': extension,
      },
    );

    return _dtoFactory.create(dto);
  }
}
