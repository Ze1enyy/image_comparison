import 'package:image_comparison/data/gateway/image_upload_gateway.dart';
import 'package:image_comparison/data/service/image_upload_service.dart';
import 'package:image_comparison/domain/entity/image_details.dart';

class ImageUploadRepository implements ImageUploadService {
  final ImageUploadGateway _gateway;

  ImageUploadRepository(this._gateway);

  @override
  Future<ImageDetails?> uploadImageFromGallery() {
    return _gateway.uploadImageFromGallery();
  }
}
