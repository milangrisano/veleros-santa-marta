import 'package:flutter/material.dart';

class ExtendAppBarButton extends StatelessWidget {
  final String text;
  final Function onPressed;
    
  const ExtendAppBarButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextButton(
        onPressed: () => onPressed(),
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          textStyle: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                offset: Offset(5.0, 5.0),
                blurRadius: 3.0,
                color: Colors.black87
              )
            ]
          )
        ),
        child: Text(text)
      ),
    );
  }
}