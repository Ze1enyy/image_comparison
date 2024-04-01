import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_comparison/domain/entity/image_details.dart';
import 'package:image_comparison/presentation/app_strings.dart';
import 'package:image_comparison/presentation/bloc/image_comparison/image_comparison_cubit.dart';
import 'package:image_comparison/utils/extensions/text_styles_extension.dart';
import 'package:image_comparison/utils/extensions/theme_extension.dart';

class ImageComparisonColumn extends StatelessWidget {
  final ImageDetails? firstImage;
  final ImageDetails? secondImage;

  const ImageComparisonColumn({
    this.firstImage,
    this.secondImage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (firstImage != null && secondImage != null)
          BlocBuilder<ImageComparisonCubit, ImageComparisonState>(
            bloc: context.read<ImageComparisonCubit>(),
            builder: (_, state) {
              return state.when(
                comparison: (isIdentical) => Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: AppStrings.comparisonResult,
                          style: context.theme.content14,
                        ),
                        TextSpan(
                          text: AppStrings.getImageComparisonStatus(
                            isIdentical: isIdentical,
                          ),
                          style: context.theme.content14.copyWith(
                            color: isIdentical
                                ? Colors.lightGreenAccent
                                : Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        Text(
          AppStrings.orientation,
          style: context.theme.header18,
        ),
        Row(
          children: [
            ...[firstImage, secondImage].where((image) => image != null).map(
                  (image) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      image?.orientation ?? '',
                      style: context.theme.content12,
                    ),
                  ),
                ),
          ],
        ),
        Text(
          AppStrings.creationDate,
          style: context.theme.header18,
        ),
        Row(
          children: [
            ...[firstImage, secondImage].where((image) => image != null).map(
                  (image) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      image?.creationTime.toString() ?? '',
                      style: context.theme.content12,
                    ),
                  ),
                ),
          ],
        ),
        Text(
          AppStrings.imageSize,
          style: context.theme.header18,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...[firstImage, secondImage].where((image) => image != null).map(
                  (image) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      image?.imageSize ?? '',
                      style: context.theme.content12,
                    ),
                  ),
                ),
          ],
        ),
      ],
    );
  }
}
