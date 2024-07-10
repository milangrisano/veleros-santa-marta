import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [        
        const Background(),
        Positioned(
          left: size.width * 1/10,
          child: Container(
            color: Colors.red,
            width: size.width * 8/10,
            height: size.height,
            child: Swiper(
              viewportFraction: 0.9,
              scale: 0.8,
              autoplay: true,
              itemCount: 3,
              itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.all(10.0),
                child: Placeholder(),
              ),
            )
          ),
        ),        
      ]
    );
  }
}

class CustomPageView extends StatelessWidget {
  const CustomPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          // color: Colors.lightBlue,
          width: size.width * 4/10,
          height: size.height,
          decoration:  const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/snorkel2.jpeg'),
              fit: BoxFit.cover,
            )
          ),
        ),
        Container(
          color: Colors.transparent,
          width: size.width * 4/10,
          height: size.height,
          child: const Column(
            children: [
              Spacer(),
              Text(
                'Snorkel',
                style: TextStyle(
                  fontSize: 30
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const Spacer(),
          Container(
            color: const Color.fromRGBO(3, 31, 131, 1),
            height: size.height * 1/3,
            width: size.width,
          ),
          Container(
            color:  const Color.fromRGBO(19, 156, 227, 1),
            height: size.height * 1/40,
            width: size.width,
          ),
          Container(
            color: Colors.white,
            height: size.height * 1/10,
            width: size.width,
          ),
        ],
      ),
    );
  }
}