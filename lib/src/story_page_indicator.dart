import 'package:flutter/widgets.dart';
import 'package:story_page_view/src/story_page_indicator_style.dart';

class StoryPageIndicatorTheme extends InheritedWidget {
  final StoryPageIndicatorStyle style;

  const StoryPageIndicatorTheme({
    Key? key,
    required this.style,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant StoryPageIndicatorTheme oldWidget) =>
      style != oldWidget.style;

  static StoryPageIndicatorTheme of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<StoryPageIndicatorTheme>() ??
      (throw FlutterError("No StoryPageIndicatorTheme found in the context"));
}

class AnimatedStoryPageIndicator extends StatelessWidget {
  final int current;
  final int total;
  final Animation<double> animation;

  const AnimatedStoryPageIndicator({
    Key? key,
    required this.current,
    required this.total,
    required this.animation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => AnimatedBuilder(
        animation: animation,
        builder: (BuildContext context, Widget? child) => StoryPageIndicator(
          current: current,
          total: total,
          currentProgress: animation.value,
        ),
      );
}

class StoryPageIndicator extends StatelessWidget {
  final int current;
  final int total;
  final double currentProgress;

  const StoryPageIndicator({
    Key? key,
    Color? timerBarBackgroundColor,
    Color? timerBarColor,
    required this.current,
    required this.total,
    required this.currentProgress,
  })  : assert(current >= 0),
        assert(
          total > current || total == 0,
          "total page should be more than current",
        ),
        assert(
          currentProgress >= 0 && currentProgress <= 1,
          "currentTimer is percentage, which should be between 0 and 1",
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        children: _buildChildren(StoryPageIndicatorTheme.of(context).style)
            .toList(growable: false),
      );

  Iterable<Widget> _buildChildren(StoryPageIndicatorStyle style) sync* {
    for (int i = 0; i < total; i++) {
      if (i != 0) yield SizedBox(key: Key("gap:$i"), width: style.gap);
      if (i == current && current != total - 1) {
        yield _Bar(
          index: i,
          shape: style.shape,
          color: style.timerBarBackgroundColor ?? style.unvisitedColor,
          height: style.height,
          child: FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: currentProgress,
            child: Container(
              decoration: ShapeDecoration(
                shape: style.shape,
                color: style.timerBarColor ?? style.vistedColor,
              ),
              height: style.height,
            ),
          ),
        );
      } else {
        yield _Bar(
          index: i,
          shape: style.shape,
          color: i <= current ? style.vistedColor : style.unvisitedColor,
          height: style.height,
        );
      }
    }
  }
}

class _Bar extends StatelessWidget {
  final int index;
  final double height;
  final Color color;
  final ShapeBorder shape;
  final Widget? child;

  _Bar({
    required this.index,
    required this.shape,
    required this.color,
    required this.height,
    this.child,
  }) : super(key: Key("bar:$index"));

  @override
  Widget build(BuildContext context) => Flexible(
        flex: 1,
        child: Container(
          alignment: Alignment.centerLeft,
          decoration: ShapeDecoration(
            shape: shape,
            color: color,
          ),
          height: height,
          child: child,
        ),
      );
}
