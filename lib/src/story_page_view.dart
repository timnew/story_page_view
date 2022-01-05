import 'package:flutter/material.dart';
import 'package:story_page_view/src/page_indicator_position.dart';
import 'package:story_page_view/src/story_page_indicator.dart';
import 'package:story_page_view/src/story_page_indicator_style.dart';

class StoryPageView extends StatefulWidget {
  final StoryPageController? controller;
  final StoryPageIndicatorStyle indicatorStyle;
  final StoryPageIndicatorPosition indicatorPosition;
  final List<Widget> children;
  final Duration storyDuration;

  const StoryPageView({
    Key? key,
    this.indicatorStyle = const StoryPageIndicatorStyle(),
    this.indicatorPosition = const StoryPageIndicatorPosition.overlay(
      left: 12,
      right: 12,
      bottom: 36,
    ),
    this.controller,
    this.storyDuration = const Duration(seconds: 3),
    this.children = const [],
  }) : super(key: key);

  @override
  _StoryPageViewState createState() => _StoryPageViewState();
}

class _StoryPageViewState extends State<StoryPageView>
    with SingleTickerProviderStateMixin {
  late StoryPageController _controller;
  late AnimationController _timer;

  @override
  void initState() {
    super.initState();

    _controller = widget.controller ?? StoryPageController();
    _createTimer();
  }

  @override
  void didUpdateWidget(covariant StoryPageView oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.controller != null && widget.controller != _controller) {
      _controller = widget.controller!;
    }

    if (widget.storyDuration != oldWidget.storyDuration) {
      _createTimer(_timer.value);
    } else if (oldWidget.children.length != totalPages) {
      _checkTimer();
    }
  }

  int currentPage = 0;
  int get totalPages => widget.children.length;

  void _createTimer([double value = 0]) {
    _timer = AnimationController(
      value: value,
      vsync: this,
      duration: widget.storyDuration,
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _onTimer();
        }
      });

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      _checkTimer();
    });
  }

  void _pageChanged(int value) {
    setState(() {
      currentPage = value;
    });

    _checkTimer();
  }

  void _checkTimer() {
    if (totalPages == 0) return;

    if (currentPage == totalPages - 1) {
      _timer.stop();
    } else {
      _timer.reset();
      _timer.forward();
    }
  }

  void _onTimer() {
    if (currentPage < totalPages - 1) {
      _controller.turnToNextPage();
    }
  }

  @override
  Widget build(BuildContext context) => StoryPageIndicatorTheme(
        style: widget.indicatorStyle,
        child: widget.indicatorPosition.when(
          overlay: _buildOverlay,
          none: _buildPageView,
          custom: _buildCustomLayout,
        ),
      );

  Widget _buildPageView() => PageView(
        controller: _controller,
        onPageChanged: _pageChanged,
        children: widget.children,
      );

  Widget _buildPageIndicator() => AnimatedStoryPageIndicator(
        animation: _timer,
        current: currentPage,
        total: totalPages,
      );

  Widget _buildOverlay(
    double? left,
    double? top,
    double? right,
    double? bottom,
  ) =>
      Stack(
        children: [
          _buildPageView(),
          Positioned(
            top: top,
            bottom: bottom,
            left: left,
            right: right,
            child: _buildPageIndicator(),
          ),
        ],
      );

  Widget _buildCustomLayout(StoryPageIndicatorLayoutBuilder layoutBuilder) =>
      layoutBuilder(
        context,
        _buildPageView(),
        _buildPageIndicator(),
      );
}

class StoryPageController extends PageController {
  final Duration pagingDuration;
  final Curve pagingCurve;

  StoryPageController({
    int initialPage = 0,
    bool keepPage = true,
    double viewportFraction = 1.0,
    this.pagingDuration = const Duration(milliseconds: 800),
    this.pagingCurve = Curves.easeInOut,
  }) : super(
          initialPage: initialPage,
          keepPage: keepPage,
          viewportFraction: viewportFraction,
        );

  Future<void> turnToNextPage() => nextPage(
        duration: pagingDuration,
        curve: pagingCurve,
      );

  Future<void> turnToPreviouspage() => previousPage(
        duration: pagingDuration,
        curve: pagingCurve,
      );

  Future<void> turnToPage(int page) => animateToPage(
        page,
        duration: pagingDuration,
        curve: pagingCurve,
      );
}
