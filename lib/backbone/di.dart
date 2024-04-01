import 'package:get_it/get_it.dart';
import 'package:image_comparison/assembly/entity/image_details_from_dto_factory.dart';
import 'package:image_comparison/assembly/factory.dart';
import 'package:image_comparison/assembly/model/image_details_dto_from_json_factory.dart';

import 'package:image_comparison/data/gateway/image_comparison_gateway.dart';
import 'package:image_comparison/data/gateway/image_upload_gateway.dart';
import 'package:image_comparison/data/model/image_details_dto.dart';
import 'package:image_comparison/data/service/image_comparison_service.dart';
import 'package:image_comparison/data/service/image_upload_service.dart';
import 'package:image_comparison/domain/entity/image_details.dart';
import 'package:image_comparison/domain/service/image_comparison_repository.dart';
import 'package:image_comparison/domain/service/image_upload_repository.dart';
import 'package:image_comparison/presentation/bloc/image_comparison/image_comparison_cubit.dart';
import 'package:image_comparison/presentation/bloc/image_upload/image_upload_cubit.dart';
import 'package:image_picker/image_picker.dart';

final GetIt sl = GetIt.instance;

void _registerInstances() {
  sl.registerFactory<ImagePicker>(
    ImagePicker.new,
  );
}

void _registerFactories() {
  sl
    ..registerLazySingleton<Factory<ImageDetails, ImageDetailsDto>>(
      ImageDetailsFromDtoFactory.new,
    )
    ..registerLazySingleton<Factory<ImageDetailsDto, Map<String, dynamic>>>(
      ImageDetailsDtoFromJsonFactory.new,
    );
}

void _registerServices() {
  sl
    ..registerFactory<ImageUploadService>(
      () => ImageUploadRepository(sl.get()),
    )
    ..registerFactory<ImageComparisonService>(
      () => ImageComparisonRepository(sl.get()),
    );
}

void _registerGateways() {
  sl
    ..registerFactory<ImageUploadGateway>(
      () => ImageUploadGateway(sl.get(), sl.get(), sl.get()),
    )
    ..registerFactory<ImageComparisonGateway>(
      ImageComparisonGateway.new,
    );
}

void _registerBlocs() {
  sl
    ..registerFactory<ImageUploadCubit>(
      () => ImageUploadCubit(sl.get()),
    )
    ..registerFactory<ImageComparisonCubit>(
      () => ImageComparisonCubit(sl.get()),
    );
}

Future<void> init() async {
  _registerInstances();
  _registerFactories();
  _registerGateways();
  _registerServices();
  _registerBlocs();
}
