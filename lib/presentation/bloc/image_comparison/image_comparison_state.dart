part of 'image_comparison_cubit.dart';

@freezed
abstract class ImageComparisonState with _$ImageComparisonState {
  const factory ImageComparisonState.comparison({required bool isIdentical}) =
      _Comparison;
}
