// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_comparison_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImageComparisonState {
  bool get isIdentical => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isIdentical) comparison,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isIdentical)? comparison,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isIdentical)? comparison,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Comparison value) comparison,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Comparison value)? comparison,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Comparison value)? comparison,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageComparisonStateCopyWith<ImageComparisonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageComparisonStateCopyWith<$Res> {
  factory $ImageComparisonStateCopyWith(ImageComparisonState value,
          $Res Function(ImageComparisonState) then) =
      _$ImageComparisonStateCopyWithImpl<$Res, ImageComparisonState>;
  @useResult
  $Res call({bool isIdentical});
}

/// @nodoc
class _$ImageComparisonStateCopyWithImpl<$Res,
        $Val extends ImageComparisonState>
    implements $ImageComparisonStateCopyWith<$Res> {
  _$ImageComparisonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isIdentical = null,
  }) {
    return _then(_value.copyWith(
      isIdentical: null == isIdentical
          ? _value.isIdentical
          : isIdentical // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComparisonImplCopyWith<$Res>
    implements $ImageComparisonStateCopyWith<$Res> {
  factory _$$ComparisonImplCopyWith(
          _$ComparisonImpl value, $Res Function(_$ComparisonImpl) then) =
      __$$ComparisonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isIdentical});
}

/// @nodoc
class __$$ComparisonImplCopyWithImpl<$Res>
    extends _$ImageComparisonStateCopyWithImpl<$Res, _$ComparisonImpl>
    implements _$$ComparisonImplCopyWith<$Res> {
  __$$ComparisonImplCopyWithImpl(
      _$ComparisonImpl _value, $Res Function(_$ComparisonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isIdentical = null,
  }) {
    return _then(_$ComparisonImpl(
      isIdentical: null == isIdentical
          ? _value.isIdentical
          : isIdentical // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ComparisonImpl implements _Comparison {
  const _$ComparisonImpl({required this.isIdentical});

  @override
  final bool isIdentical;

  @override
  String toString() {
    return 'ImageComparisonState.comparison(isIdentical: $isIdentical)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComparisonImpl &&
            (identical(other.isIdentical, isIdentical) ||
                other.isIdentical == isIdentical));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isIdentical);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ComparisonImplCopyWith<_$ComparisonImpl> get copyWith =>
      __$$ComparisonImplCopyWithImpl<_$ComparisonImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isIdentical) comparison,
  }) {
    return comparison(isIdentical);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isIdentical)? comparison,
  }) {
    return comparison?.call(isIdentical);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isIdentical)? comparison,
    required TResult orElse(),
  }) {
    if (comparison != null) {
      return comparison(isIdentical);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Comparison value) comparison,
  }) {
    return comparison(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Comparison value)? comparison,
  }) {
    return comparison?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Comparison value)? comparison,
    required TResult orElse(),
  }) {
    if (comparison != null) {
      return comparison(this);
    }
    return orElse();
  }
}

abstract class _Comparison implements ImageComparisonState {
  const factory _Comparison({required final bool isIdentical}) =
      _$ComparisonImpl;

  @override
  bool get isIdentical;
  @override
  @JsonKey(ignore: true)
  _$$ComparisonImplCopyWith<_$ComparisonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
