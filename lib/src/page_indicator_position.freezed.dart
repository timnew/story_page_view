// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'page_indicator_position.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StoryPageIndicatorPositionTearOff {
  const _$StoryPageIndicatorPositionTearOff();

  _Overlay overlay({double? left, double? top, double? right, double? bottom}) {
    return _Overlay(
      left: left,
      top: top,
      right: right,
      bottom: bottom,
    );
  }

  _None none() {
    return const _None();
  }

  _Custom custom({required StoryPageIndicatorLayoutBuilder layoutBuilder}) {
    return _Custom(
      layoutBuilder: layoutBuilder,
    );
  }
}

/// @nodoc
const $StoryPageIndicatorPosition = _$StoryPageIndicatorPositionTearOff();

/// @nodoc
mixin _$StoryPageIndicatorPosition {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            double? left, double? top, double? right, double? bottom)
        overlay,
    required TResult Function() none,
    required TResult Function(StoryPageIndicatorLayoutBuilder layoutBuilder)
        custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double? left, double? top, double? right, double? bottom)?
        overlay,
    TResult Function()? none,
    TResult Function(StoryPageIndicatorLayoutBuilder layoutBuilder)? custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? left, double? top, double? right, double? bottom)?
        overlay,
    TResult Function()? none,
    TResult Function(StoryPageIndicatorLayoutBuilder layoutBuilder)? custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Overlay value) overlay,
    required TResult Function(_None value) none,
    required TResult Function(_Custom value) custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Overlay value)? overlay,
    TResult Function(_None value)? none,
    TResult Function(_Custom value)? custom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Overlay value)? overlay,
    TResult Function(_None value)? none,
    TResult Function(_Custom value)? custom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryPageIndicatorPositionCopyWith<$Res> {
  factory $StoryPageIndicatorPositionCopyWith(StoryPageIndicatorPosition value,
          $Res Function(StoryPageIndicatorPosition) then) =
      _$StoryPageIndicatorPositionCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoryPageIndicatorPositionCopyWithImpl<$Res>
    implements $StoryPageIndicatorPositionCopyWith<$Res> {
  _$StoryPageIndicatorPositionCopyWithImpl(this._value, this._then);

  final StoryPageIndicatorPosition _value;
  // ignore: unused_field
  final $Res Function(StoryPageIndicatorPosition) _then;
}

/// @nodoc
abstract class _$OverlayCopyWith<$Res> {
  factory _$OverlayCopyWith(_Overlay value, $Res Function(_Overlay) then) =
      __$OverlayCopyWithImpl<$Res>;
  $Res call({double? left, double? top, double? right, double? bottom});
}

/// @nodoc
class __$OverlayCopyWithImpl<$Res>
    extends _$StoryPageIndicatorPositionCopyWithImpl<$Res>
    implements _$OverlayCopyWith<$Res> {
  __$OverlayCopyWithImpl(_Overlay _value, $Res Function(_Overlay) _then)
      : super(_value, (v) => _then(v as _Overlay));

  @override
  _Overlay get _value => super._value as _Overlay;

  @override
  $Res call({
    Object? left = freezed,
    Object? top = freezed,
    Object? right = freezed,
    Object? bottom = freezed,
  }) {
    return _then(_Overlay(
      left: left == freezed
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as double?,
      top: top == freezed
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as double?,
      right: right == freezed
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as double?,
      bottom: bottom == freezed
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_Overlay extends _Overlay {
  const _$_Overlay({this.left, this.top, this.right, this.bottom}) : super._();

  @override
  final double? left;
  @override
  final double? top;
  @override
  final double? right;
  @override
  final double? bottom;

  @override
  String toString() {
    return 'StoryPageIndicatorPosition.overlay(left: $left, top: $top, right: $right, bottom: $bottom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Overlay &&
            const DeepCollectionEquality().equals(other.left, left) &&
            const DeepCollectionEquality().equals(other.top, top) &&
            const DeepCollectionEquality().equals(other.right, right) &&
            const DeepCollectionEquality().equals(other.bottom, bottom));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(left),
      const DeepCollectionEquality().hash(top),
      const DeepCollectionEquality().hash(right),
      const DeepCollectionEquality().hash(bottom));

  @JsonKey(ignore: true)
  @override
  _$OverlayCopyWith<_Overlay> get copyWith =>
      __$OverlayCopyWithImpl<_Overlay>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            double? left, double? top, double? right, double? bottom)
        overlay,
    required TResult Function() none,
    required TResult Function(StoryPageIndicatorLayoutBuilder layoutBuilder)
        custom,
  }) {
    return overlay(left, top, right, bottom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double? left, double? top, double? right, double? bottom)?
        overlay,
    TResult Function()? none,
    TResult Function(StoryPageIndicatorLayoutBuilder layoutBuilder)? custom,
  }) {
    return overlay?.call(left, top, right, bottom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? left, double? top, double? right, double? bottom)?
        overlay,
    TResult Function()? none,
    TResult Function(StoryPageIndicatorLayoutBuilder layoutBuilder)? custom,
    required TResult orElse(),
  }) {
    if (overlay != null) {
      return overlay(left, top, right, bottom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Overlay value) overlay,
    required TResult Function(_None value) none,
    required TResult Function(_Custom value) custom,
  }) {
    return overlay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Overlay value)? overlay,
    TResult Function(_None value)? none,
    TResult Function(_Custom value)? custom,
  }) {
    return overlay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Overlay value)? overlay,
    TResult Function(_None value)? none,
    TResult Function(_Custom value)? custom,
    required TResult orElse(),
  }) {
    if (overlay != null) {
      return overlay(this);
    }
    return orElse();
  }
}

abstract class _Overlay extends StoryPageIndicatorPosition {
  const factory _Overlay(
      {double? left, double? top, double? right, double? bottom}) = _$_Overlay;
  const _Overlay._() : super._();

  double? get left;
  double? get top;
  double? get right;
  double? get bottom;
  @JsonKey(ignore: true)
  _$OverlayCopyWith<_Overlay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NoneCopyWith<$Res> {
  factory _$NoneCopyWith(_None value, $Res Function(_None) then) =
      __$NoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoneCopyWithImpl<$Res>
    extends _$StoryPageIndicatorPositionCopyWithImpl<$Res>
    implements _$NoneCopyWith<$Res> {
  __$NoneCopyWithImpl(_None _value, $Res Function(_None) _then)
      : super(_value, (v) => _then(v as _None));

  @override
  _None get _value => super._value as _None;
}

/// @nodoc

class _$_None extends _None {
  const _$_None() : super._();

  @override
  String toString() {
    return 'StoryPageIndicatorPosition.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _None);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            double? left, double? top, double? right, double? bottom)
        overlay,
    required TResult Function() none,
    required TResult Function(StoryPageIndicatorLayoutBuilder layoutBuilder)
        custom,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double? left, double? top, double? right, double? bottom)?
        overlay,
    TResult Function()? none,
    TResult Function(StoryPageIndicatorLayoutBuilder layoutBuilder)? custom,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? left, double? top, double? right, double? bottom)?
        overlay,
    TResult Function()? none,
    TResult Function(StoryPageIndicatorLayoutBuilder layoutBuilder)? custom,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Overlay value) overlay,
    required TResult Function(_None value) none,
    required TResult Function(_Custom value) custom,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Overlay value)? overlay,
    TResult Function(_None value)? none,
    TResult Function(_Custom value)? custom,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Overlay value)? overlay,
    TResult Function(_None value)? none,
    TResult Function(_Custom value)? custom,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _None extends StoryPageIndicatorPosition {
  const factory _None() = _$_None;
  const _None._() : super._();
}

/// @nodoc
abstract class _$CustomCopyWith<$Res> {
  factory _$CustomCopyWith(_Custom value, $Res Function(_Custom) then) =
      __$CustomCopyWithImpl<$Res>;
  $Res call({StoryPageIndicatorLayoutBuilder layoutBuilder});
}

/// @nodoc
class __$CustomCopyWithImpl<$Res>
    extends _$StoryPageIndicatorPositionCopyWithImpl<$Res>
    implements _$CustomCopyWith<$Res> {
  __$CustomCopyWithImpl(_Custom _value, $Res Function(_Custom) _then)
      : super(_value, (v) => _then(v as _Custom));

  @override
  _Custom get _value => super._value as _Custom;

  @override
  $Res call({
    Object? layoutBuilder = freezed,
  }) {
    return _then(_Custom(
      layoutBuilder: layoutBuilder == freezed
          ? _value.layoutBuilder
          : layoutBuilder // ignore: cast_nullable_to_non_nullable
              as StoryPageIndicatorLayoutBuilder,
    ));
  }
}

/// @nodoc

class _$_Custom extends _Custom {
  const _$_Custom({required this.layoutBuilder}) : super._();

  @override
  final StoryPageIndicatorLayoutBuilder layoutBuilder;

  @override
  String toString() {
    return 'StoryPageIndicatorPosition.custom(layoutBuilder: $layoutBuilder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Custom &&
            (identical(other.layoutBuilder, layoutBuilder) ||
                other.layoutBuilder == layoutBuilder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, layoutBuilder);

  @JsonKey(ignore: true)
  @override
  _$CustomCopyWith<_Custom> get copyWith =>
      __$CustomCopyWithImpl<_Custom>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            double? left, double? top, double? right, double? bottom)
        overlay,
    required TResult Function() none,
    required TResult Function(StoryPageIndicatorLayoutBuilder layoutBuilder)
        custom,
  }) {
    return custom(layoutBuilder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double? left, double? top, double? right, double? bottom)?
        overlay,
    TResult Function()? none,
    TResult Function(StoryPageIndicatorLayoutBuilder layoutBuilder)? custom,
  }) {
    return custom?.call(layoutBuilder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? left, double? top, double? right, double? bottom)?
        overlay,
    TResult Function()? none,
    TResult Function(StoryPageIndicatorLayoutBuilder layoutBuilder)? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(layoutBuilder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Overlay value) overlay,
    required TResult Function(_None value) none,
    required TResult Function(_Custom value) custom,
  }) {
    return custom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Overlay value)? overlay,
    TResult Function(_None value)? none,
    TResult Function(_Custom value)? custom,
  }) {
    return custom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Overlay value)? overlay,
    TResult Function(_None value)? none,
    TResult Function(_Custom value)? custom,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(this);
    }
    return orElse();
  }
}

abstract class _Custom extends StoryPageIndicatorPosition {
  const factory _Custom(
      {required StoryPageIndicatorLayoutBuilder layoutBuilder}) = _$_Custom;
  const _Custom._() : super._();

  StoryPageIndicatorLayoutBuilder get layoutBuilder;
  @JsonKey(ignore: true)
  _$CustomCopyWith<_Custom> get copyWith => throw _privateConstructorUsedError;
}
