part of 'image_upload_cubit.dart';

@freezed
abstract class ImageUploadState with _$ImageUploadState {
  const factory ImageUploadState.loaded([
    ImageDetails? firstImage,
    ImageDetails? secondImage,
  ]) = _Loaded;
}
