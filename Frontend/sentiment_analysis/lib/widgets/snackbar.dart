import 'package:flutter/material.dart';

class DefaultSnackbar extends StatelessWidget {
  final String message;
  final Color bgColor;

  const DefaultSnackbar({
    required this.message,
    required this.bgColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 250,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
