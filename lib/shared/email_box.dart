import 'package:flutter/material.dart';
import 'package:responsive_app/shared/box_text_field.dart';

class EmailBox extends StatelessWidget {
  const EmailBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      // color: Colors.greenAccent,
      height: size.height * 1 / 2,
      width: size.width * 1 / 2,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 370),
        child: Form(
          child: Column(
            children: [
              const FittedBox(
                child: Center(
                  child: Text(
                    'Contactanos',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
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
              const BoxEmailField(
                labelText: 'Nombre',
                hintText: 'Ingrese su Nombre',
              ),
              const BoxEmailField(
                labelText: 'Apellido',
                hintText: 'Ingrese su Apellido',
              ),
              const BoxEmailField(
                labelText: 'Correo Electronico',
                hintText: 'Ingrese su correo Electronico',
              ),
              const BoxEmailField(
                labelText: 'Mensaje',
                hintText: 'Ingrese su Mensaje',
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
