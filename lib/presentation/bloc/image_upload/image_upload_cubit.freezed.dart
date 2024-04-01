// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_upload_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImageUploadState {
  ImageDetails? get firstImage => throw _privateConstructorUsedError;
  ImageDetails? get secondImage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ImageDetails? firstImage, ImageDetails? secondImage)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageDetails? firstImage, ImageDetails? secondImage)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageDetails? firstImage, ImageDetails? secondImage)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageUploadStateCopyWith<ImageUploadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageUploadStateCopyWith<$Res> {
  factory $ImageUploadStateCopyWith(
          ImageUploadState value, $Res Function(ImageUploadState) then) =
      _$ImageUploadStateCopyWithImpl<$Res, ImageUploadState>;
  @useResult
  $Res call({ImageDetails? firstImage, ImageDetails? secondImage});
}

/// @nodoc
class _$ImageUploadStateCopyWithImpl<$Res, $Val extends ImageUploadState>
    implements $ImageUploadStateCopyWith<$Res> {
  _$ImageUploadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstImage = freezed,
    Object? secondImage = freezed,
  }) {
    return _then(_value.copyWith(
      firstImage: freezed == firstImage
          ? _value.firstImage
          : firstImage // ignore: cast_nullable_to_non_nullable
              as ImageDetails?,
      secondImage: freezed == secondImage
          ? _value.secondImage
          : secondImage // ignore: cast_nullable_to_non_nullable
              as ImageDetails?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res>
    implements $ImageUploadStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ImageDetails? firstImage, ImageDetails? secondImage});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ImageUploadStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstImage = freezed,
    Object? secondImage = freezed,
  }) {
    return _then(_$LoadedImpl(
      freezed == firstImage
          ? _value.firstImage
          : firstImage // ignore: cast_nullable_to_non_nullable
              as ImageDetails?,
      freezed == secondImage
          ? _value.secondImage
          : secondImage // ignore: cast_nullable_to_non_nullable
              as ImageDetails?,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl([this.firstImage, this.secondImage]);

  @override
  final ImageDetails? firstImage;
  @override
  final ImageDetails? secondImage;

  @override
  String toString() {
    return 'ImageUploadState.loaded(firstImage: $firstImage, secondImage: $secondImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.firstImage, firstImage) ||
                other.firstImage == firstImage) &&
            (identical(other.secondImage, secondImage) ||
                other.secondImage == secondImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstImage, secondImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ImageDetails? firstImage, ImageDetails? secondImage)
        loaded,
  }) {
    return loaded(firstImage, secondImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ImageDetails? firstImage, ImageDetails? secondImage)?
        loaded,
  }) {
    return loaded?.call(firstImage, secondImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ImageDetails? firstImage, ImageDetails? secondImage)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(firstImage, secondImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ImageUploadState {
  const factory _Loaded(
      [final ImageDetails? firstImage,
      final ImageDetails? secondImage]) = _$LoadedImpl;

  @override
  ImageDetails? get firstImage;
  @override
  ImageDetails? get secondImage;
  @override
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
