import 'package:flutter/material.dart';

class LocationView extends StatelessWidget {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration:  const BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.topCenter,
          image: AssetImage('assets/images/VSM-Maps.png'),
          fit: BoxFit.fitWidth,
        )
      ),
      child: CustomPaint(
        painter: _WaveGradientPainter(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: size.height * 4.5/10,
              width: size.width * 1/2,
              // color: Colors.deepPurple,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.white,
                    size: 60.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(                  
                      'Kr.1 No. 22 - 93 / Marina Internacional de Santa Marta Muelle E - Embarcación Artivela, Santa Marta, Magdalena, Colombia.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(                        
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Icon(
                    Icons.phone,
                    color: Colors.white,
                    size: 60.0,
                  ),
                  Text(                  
                    '+57 3046654637',
                    textAlign: TextAlign.justify,
                    style: TextStyle(                        
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook, color: Colors.white,),
                      SizedBox(width: 10),
                      Icon(Icons.photo, color: Colors.white,),
                      SizedBox(width: 10),
                      Icon(Icons.video_camera_back, color: Colors.white,),
                    ],
                  )
                ],
              ),
            ),
            Container( 
              height: size.height * 1/2,
              width: size.width * 1/2,
              // color: Colors.greenAccent,
              child: const Center(
                child: Text(
                  'LocationView',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40
                  ),
                ),
              ),
            )            
          ],
        ),
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
