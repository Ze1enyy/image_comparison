import 'package:image_comparison/domain/entity/image_details.dart';

abstract class ImageUploadService {
  Future<ImageDetails?> uploadImageFromGallery();
}
