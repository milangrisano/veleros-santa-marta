import 'package:flutter/material.dart';
import 'package:responsive_app/shared/location_phone.dart';

class LocationView extends StatelessWidget {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration:  const BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.topCenter,
          image: AssetImage('assets/images/VSM_Maps.png'),
          fit: BoxFit.cover,
        )
      ),
      child: CustomPaint(
        painter: _WaveGradientPainter(),
        child: const LocationPhone(),
      )    
    );
  }
}



class _WaveGradientPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Rect.fromCircle(
      center: Offset(0.0, size.height * 0.7),
      radius: 180,
    );
    const Gradient gradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color.fromRGBO(19, 156, 227, 1),
         Color.fromRGBO(3, 31, 131, 1),
      ],
      stops: [
        0.5,
        1.0,
      ]
    );    
    final paint = Paint()..shader = gradient.createShader(rect);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;
    final path = Path();

    path.moveTo(0, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.6, size.width * 0.5, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.4, size.width, size.height * 0.5);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}