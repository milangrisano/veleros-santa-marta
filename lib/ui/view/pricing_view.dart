import 'package:flutter/material.dart';

class PricingView extends StatelessWidget {
  const PricingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pinkAccent,
      child: const Center(
        child: Text(
          'PricingView',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40
          ),
        )
      ),
    );
  }
}