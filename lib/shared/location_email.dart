import 'package:flutter/material.dart';

class LocationEmail extends StatelessWidget {
  const LocationEmail({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
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
    );
  }
}