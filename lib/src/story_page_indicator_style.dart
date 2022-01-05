import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_page_indicator_style.freezed.dart';

@freezed
class StoryPageIndicatorStyle with _$StoryPageIndicatorStyle {
  const factory StoryPageIndicatorStyle({
    @Default(4) double height,
    @Default(8) double gap,
    @Default(Colors.black38) Color unvisitedColor,
    @Default(Colors.black87) Color vistedColor,
    @Default(StadiumBorder()) ShapeBorder shape,
    Color? timerBarBackgroundColor,
    Color? timerBarColor,
  }) = _StoryPageIndicatorStyle;
}
