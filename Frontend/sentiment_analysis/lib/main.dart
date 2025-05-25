import 'package:flutter/material.dart';
import 'package:sentiment_analysis/constants/constants.dart';
import 'package:sentiment_analysis/pages/home/home.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Sentiment Analysis',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: twitterLogoColor,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    ),
  );
}
