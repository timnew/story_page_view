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
          indicatorStyle: const StoryPageIndicatorStyle(),
          controller: StoryPageController(),
          storyDuration: const Duration(seconds: 3),
          // No page indicator, timer only
          indicatorPosition: const StoryPageIndicatorPosition.none(),
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
