
import 'package:flutter/material.dart';

class LogoAppBar extends StatelessWidget {
  const LogoAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(6.0),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        foregroundImage: AssetImage('assets/images/logo_small.png'),
      ),
    );
  }
}