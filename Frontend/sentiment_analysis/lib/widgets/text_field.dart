import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  const DefaultTextField({super.key, required this.textController});

  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      keyboardType: TextInputType.text,
      maxLines: 5,
      maxLength: 500,
      onFieldSubmitted: (_) {},
      decoration: InputDecoration(
        hintText: 'Enter your text',
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
