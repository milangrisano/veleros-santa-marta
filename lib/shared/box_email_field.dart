import 'package:flutter/material.dart';

class BoxEmailField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final double maxWidth;
  final int maxLines;
  final double maxHeigth;
  final double paddingVertical;
  final double labelSizeFont;
  final double fontTextSize;
  final TextEditingController controller;
  const BoxEmailField({
    super.key,
    required this.hintText,
    required this.labelText,
    this.maxWidth = 240,
    this.maxLines = 1,
    this.maxHeigth = 50,
    this.paddingVertical = 10,
    this.labelSizeFont = 16,
    required this.fontTextSize,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 5,
      ),
      child: TextFormField(
        controller: controller,
        maxLines: maxLines,
        style: TextStyle(
          fontSize: fontTextSize,
        ),
        decoration: InputDecoration(
          constraints: BoxConstraints(
            maxWidth: maxWidth,
            maxHeight: maxHeigth,
          ),
          fillColor: Colors.white,
          prefixIcon: const Icon(Icons.mail_outline),
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(
            backgroundColor: Colors.white,
          ),
          labelText: labelText,
          labelStyle: TextStyle(
            backgroundColor: Colors.white,
            fontSize: labelSizeFont,
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          // border: BorderRadius.all(color: Colors.white)
        ),
      ),
    );
  }
}
