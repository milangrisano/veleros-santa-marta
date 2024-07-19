import 'package:flutter/material.dart';

class PricingView extends StatelessWidget {
  const PricingView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration:  BoxDecoration(
        image: DecorationImage(
          image: const AssetImage('assets/images/proa_view.png'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.grey.shade600,
            BlendMode.softLight
          ),
        )
      ),
      // color: Colors.pinkAccent,
      child: Column(
        children: [
          // ignore: prefer_const_constructors
          Spacer(),
          Container(
            color: const Color.fromRGBO(19, 156, 227, 1),
            width: size.width * 8/10,
            height: size.height * 8/10,
            child: const Center(
              child: Text(
                'PricingView',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40
                ),
              )
            ),
          ),
          const Spacer()
        ],
      ),
    );
  }
}