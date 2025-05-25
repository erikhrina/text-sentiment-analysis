import 'package:flutter/material.dart';
import 'package:sentiment_analysis/constants/constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
  });

  final void Function() onPressed;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 120,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: WidgetStateProperty.resolveWith<OutlinedBorder>(
            (_) => RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          backgroundColor: WidgetStateProperty.all<Color>(
            twitterLogoColor,
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
