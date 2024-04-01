import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_comparison/data/service/image_upload_service.dart';
import 'package:image_comparison/domain/entity/image_details.dart';

part 'image_upload_state.dart';
part 'image_upload_cubit.freezed.dart';

class ImageUploadCubit extends Cubit<ImageUploadState> {
  final ImageUploadService _service;

  ImageUploadCubit(this._service) : super(const _Loaded());

  Future<void> selectImageFromGallery() async {
    final selectedImage = await _service.uploadImageFromGallery();

    state.whenOrNull(
      loaded: (firstImage, _) {
        emit(
          firstImage != null
              ? _Loaded(firstImage, selectedImage)
              : _Loaded(selectedImage),
        );
      },
    );
  }

  void clearSelectedImages() {
    emit(const _Loaded());
  }
}
