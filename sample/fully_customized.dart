import 'package:flutter/material.dart';
import 'package:story_page_view/story_page_view.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: StoryPageView(
          // Customize indicator looking
          indicatorStyle: StoryPageIndicatorStyle(
            height: 6,
            gap: 12,
            unvisitedColor: Colors.blue.shade200,
            vistedColor: Colors.blue.shade900,
            timerBarBackgroundColor:
                Colors.blue.shade300, // default to unvisitedColor
            timerBarColor: Colors.blue.shade700, // default to vistedColor
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          controller: StoryPageController(
            // Customize paging animation style
            pagingCurve: Curves.elasticOut,
            pagingDuration: const Duration(milliseconds: 2000),
          ),
          storyDuration: const Duration(seconds: 5),
          // Customize whole layout
          indicatorPosition: StoryPageIndicatorPosition.custom(
              layoutBuilder: (c, pageView, indicator) => SafeArea(
                    child: Column(
                      children: [
                        // Put page indicator on top of the pager
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 12,
                          ),
                          child: indicator,
                        ),
                        Expanded(
                          child: pageView,
                        ),
                      ],
                    ),
                  )),
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.orange,
            ),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.indigo,
            ),
            Container(
              color: Colors.purple,
            ),
          ],
        ),
      ),
    ),
  );
}
