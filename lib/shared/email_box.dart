import 'package:flutter/material.dart';
import 'package:responsive_app/shared/box_email_field.dart';

class EmailBox extends StatelessWidget {
  const EmailBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      // color: Colors.greenAccent,
      height: size.height * 1 / 2,
      width: size.width * 1 / 2,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 370),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                child: Center(
                  child: Text(
                    'Contactanos',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: currentWidth < 500 ? 25 : 40,
                    ),
                  ),
                ),
              ),
              const FittedBox(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      'Escribe tus datos y cuentanos como podemos atenderte',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
              // ignore: prefer_const_constructors
              BoxEmailField(
                labelText: 'Nombre y Apellido',
                hintText: 'Ingrese su Nombre y Apellido',
                maxWidth: size.width,
                maxHeigth: currentHeight < 870 ? 35 : size.height,
                labelSizeFont: currentWidth < 470 ? 10 : 16,
                fontTextSize: currentWidth < 470 ? 10 : 16,
              ),
              BoxEmailField(
                labelText: 'Correo Electronico',
                hintText: 'Ingrese su correo Electronico',
                maxWidth: size.width,
                maxHeigth: currentHeight < 870 ? 35 : size.height,
                labelSizeFont: currentWidth < 470 ? 10 : 16,
                fontTextSize: currentWidth < 470 ? 10 : 16,
              ),
              BoxEmailField(
                labelText: 'Mensaje',
                hintText: 'Ingrese su Mensaje',
                maxWidth: size.width,
                maxLines: 6,
                maxHeigth: currentHeight < 870 ? 95 : size.height * 1 / 10,
                labelSizeFont: currentWidth < 470 ? 10 : 16,
                fontTextSize: currentWidth < 470 ? 10 : 16,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  child: const Text(
                    'Enviar',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
