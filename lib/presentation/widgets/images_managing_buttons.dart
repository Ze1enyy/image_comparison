import 'package:flutter/material.dart';
import 'package:image_comparison/presentation/app_strings.dart';

class ImagesManagingButtons extends StatelessWidget {
  final bool isBothImagesPicked;
  final VoidCallback? uploadCallback;
  final VoidCallback clearCallback;

  const ImagesManagingButtons({
    required this.isBothImagesPicked,
    required this.uploadCallback,
    required this.clearCallback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: uploadCallback,
          child: const Text(AppStrings.uploadImage),
        ),
        if (isBothImagesPicked)
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: ElevatedButton(
              onPressed: clearCallback,
              child: const Text(AppStrings.clear),
            ),
          ),
      ],
    );
  }
}
