import 'package:flutter/material.dart';

class SquareInfo extends StatelessWidget {
  final Color color;
  final String text;
  final String textparagraph;
  final Color colorText;
  final double fontSize;
  final Color colorTextparagraph;
  final double fontSizeparagraph;
  const SquareInfo({
    super.key,
    required this.color,
    required this.text,
    required this.colorText,
    required this.fontSize,
    required this.colorTextparagraph,
    required this.fontSizeparagraph,
    required this.textparagraph,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return FittedBox(
      fit: BoxFit.contain,
      child: Container(
        color: color,
        height: size.height * 1/2,
        width: size.width * 1/3,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(text,
                style: TextStyle(
                  color: colorText,
                  fontSize: fontSize,
                ),
              ),
              const SizedBox(height: 20),
              Text(textparagraph,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: colorTextparagraph,
                  fontSize: fontSizeparagraph,
                  
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}