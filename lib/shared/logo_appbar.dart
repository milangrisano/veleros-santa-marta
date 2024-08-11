import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_app/provider/page_provider.dart';

class LogoAppBar extends StatelessWidget {
  const LogoAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () => pageProvider.goTo(0),
          child: const CircleAvatar(
            backgroundColor: Colors.transparent,
            foregroundImage: AssetImage('assets/images/Logo2.png'),
          ),
        ),
      ),
    );
  }
}
