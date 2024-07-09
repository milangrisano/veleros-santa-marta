import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent,
      child: const Center(
        child: Text(
          'AboutView',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40
          ),
        )
      ),
    );
  }
}