import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_comparison/backbone/di.dart';
import 'package:image_comparison/presentation/bloc/image_comparison/image_comparison_cubit.dart';
import 'package:image_comparison/presentation/bloc/image_upload/image_upload_cubit.dart';

import 'package:image_comparison/presentation/widgets/images_managing_buttons.dart';
import 'package:image_comparison/presentation/widgets/images_row.dart';

class ImageComparisonPage extends StatefulWidget {
  const ImageComparisonPage({super.key});

  @override
  State<ImageComparisonPage> createState() => _ImageComparisonPageState();
}

class _ImageComparisonPageState extends State<ImageComparisonPage> {
  final _uploadCubit = sl<ImageUploadCubit>();
  final _comparisonCubit = sl<ImageComparisonCubit>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider.value(value: _comparisonCubit)],
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.deepPurpleAccent,
          body: BlocConsumer<ImageUploadCubit, ImageUploadState>(
            listener: (_, state) {
              state.when(
                loaded: (firstImage, secondImage) {
                  if (firstImage != null && secondImage != null) {
                    _comparisonCubit.compareImages(
                      firstImage.bytes,
                      secondImage.bytes,
                    );
                  }
                },
              );
            },
            bloc: _uploadCubit,
            builder: (_, state) {
              return state.when(
                loaded: (firstImage, secondImage) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ImagesRow(
                          firstImage: firstImage,
                          secondImage: secondImage,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Center(
                          child: ImagesManagingButtons(
                            isBothImagesPicked: firstImage != null,
                            uploadCallback:
                                firstImage != null && secondImage != null
                                    ? null
                                    : () async =>
                                        _uploadCubit.selectImageFromGallery(),
                            clearCallback: _uploadCubit.clearSelectedImages,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _uploadCubit.close();
    _comparisonCubit.close();
    super.dispose();
  }
}
