import 'package:flutter/material.dart';
import 'package:image_comparison/domain/entity/image_details.dart';
import 'package:image_comparison/presentation/widgets/image_comparison_column.dart';
import 'package:image_comparison/presentation/widgets/image_container.dart';

class ImagesRow extends StatelessWidget {
  final ImageDetails? firstImage;
  final ImageDetails? secondImage;

  const ImagesRow({
    required this.firstImage,
    required this.secondImage,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: secondImage != null
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            if (firstImage != null)
              ImageContainer(imageBytes: firstImage?.bytes),
            if (secondImage != null)
              ImageContainer(imageBytes: secondImage?.bytes),
          ],
        ),
        if (firstImage != null)
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageComparisonColumn(
                  firstImage: firstImage,
                  secondImage: secondImage,
                ),
              ],
            ),
          ),
      ],
    );
  }
}
