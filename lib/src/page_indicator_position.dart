import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_indicator_position.freezed.dart';

/// Type to build custom layout
typedef StoryPageIndicatorLayoutBuilder = Widget Function(
  BuildContext context,
  Widget pageView,
  Widget pageIndicator,
);

/// Specify where the page inidicator should be positioned
@freezed
abstract class StoryPageIndicatorPosition
    implements _$StoryPageIndicatorPosition {
  const StoryPageIndicatorPosition._();

  /// Render the page indicator as overlay on top of the page view content
  const factory StoryPageIndicatorPosition.overlay({
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) = _Overlay;

  /// Do not render page indicator
  const factory StoryPageIndicatorPosition.none() = _None;

  /// Provide your own [layoutBuilder] to specify the layout
  const factory StoryPageIndicatorPosition.custom({
    required StoryPageIndicatorLayoutBuilder layoutBuilder,
  }) = _Custom;
}
