import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_indicator_position.freezed.dart';

typedef StoryPageIndicatorLayoutBuilder = Widget Function(
  BuildContext context,
  Widget pageView,
  Widget pageIndicator,
);

@freezed
abstract class StoryPageIndicatorPosition
    implements _$StoryPageIndicatorPosition {
  const StoryPageIndicatorPosition._();

  const factory StoryPageIndicatorPosition.overlay({
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) = _Overlay;

  const factory StoryPageIndicatorPosition.none() = _None;

  const factory StoryPageIndicatorPosition.custom({
    required StoryPageIndicatorLayoutBuilder layoutBuilder,
  }) = _Custom;
}
