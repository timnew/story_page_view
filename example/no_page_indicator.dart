import 'package:flutter/material.dart';
import 'package:story_page_view/story_page_view.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: SizedBox(
            height: 300,
            child: StoryPageView(
              storyDuration: const Duration(seconds: 1),
              // No page indicator, timer only
              indicatorPosition: const StoryPageIndicatorPosition.none(),
              // Make the view port only 95% of the screen width
              controller: StoryPageController(
                viewportFraction: 0.95,
              ),
              children: [
                Container(color: Colors.red),
                Container(color: Colors.orange),
                Container(color: Colors.yellow),
                Container(color: Colors.green),
                Container(color: Colors.blue),
                Container(color: Colors.indigo),
                Container(color: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
