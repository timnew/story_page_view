import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_page_indicator_style.freezed.dart';

/// Style to specify the visual of the page indicator.
@freezed
class StoryPageIndicatorStyle with _$StoryPageIndicatorStyle {
  const factory StoryPageIndicatorStyle({
    @Default(4) double height,
    @Default(8) double gap,
    @Default(Colors.black38) Color unvisitedColor,
    @Default(Colors.black87) Color visitedColor,
    @Default(StadiumBorder()) ShapeBorder shape,
    Color? timerBarBackgroundColor,
    Color? timerBarColor,
  }) = _StoryPageIndicatorStyle;
}
