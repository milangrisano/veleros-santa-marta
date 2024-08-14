import 'package:flutter/material.dart';

class TitleAppBar extends StatelessWidget {
  final Color color;
  const TitleAppBar({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Text(
        'TUTOUR',
        style: TextStyle(
          color: color,
          fontFamily: 'Akatab',
          shadows: const [
            Shadow(
                offset: Offset(5.0, 5.0),
                blurRadius: 2.0,
                color: Colors.black87)
          ],
        ),
      ),
    );
  }
}
