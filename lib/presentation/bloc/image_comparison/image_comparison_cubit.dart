import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_comparison/data/service/image_comparison_service.dart';

part 'image_comparison_state.dart';
part 'image_comparison_cubit.freezed.dart';

class ImageComparisonCubit extends Cubit<ImageComparisonState> {
  final ImageComparisonService _comparisonService;

  ImageComparisonCubit(
    this._comparisonService,
  ) : super(const ImageComparisonState.comparison(isIdentical: false));

  Future<void> compareImages(
    Uint8List firstImageBytes,
    Uint8List secondImageBytes,
  ) async {
    emit(
      _Comparison(
        isIdentical: _comparisonService.areImagesIdentical(
          firstImageBytes: firstImageBytes,
          secondImageBytes: secondImageBytes,
        ),
      ),
    );
  }
}
