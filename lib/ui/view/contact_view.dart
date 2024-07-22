import 'package:flutter/material.dart';
import 'package:responsive_app/shared/background_line_horizontal.dart';
import 'package:responsive_app/shared/custom_swiper.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(alignment: Alignment.center, children: [
      const BackgroundLineHorizontal(
        text: Text(''),
        title: Text(''),
      ),
      Container(
          color: Colors.transparent,
          width: size.width * 9 / 10,
          height: size.height,
          child: const CustomSwiper()),
    ]);
  }
}
