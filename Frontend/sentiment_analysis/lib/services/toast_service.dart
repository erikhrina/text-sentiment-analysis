import 'package:flutter/material.dart';
import 'package:sentiment_analysis/constants/constants.dart';
import 'package:sentiment_analysis/widgets/snackbar.dart';

class ToastService {
  static showSnackbar(
    BuildContext context, {
    required String message,
    Duration duration = const Duration(milliseconds: 2000),
  }) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        padding: EdgeInsets.all(8),
        behavior: SnackBarBehavior.floating,
        content: DefaultSnackbar(
          message: message,
          bgColor: errorColor,
        ),
        duration: duration,
      ),
    );
  }
}
