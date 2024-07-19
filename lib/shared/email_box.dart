import 'package:flutter/material.dart';
import 'package:responsive_app/shared/text_bold_field.dart';

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
      height: size.height * 1/2,
      width: size.width * 1/2,
      child: ConstrainedBox(
        constraints: const BoxConstraints( maxWidth: 370 ),
        child: const Form(
          child: Column(
            children: [
              FittedBox(
                child: Center(
                  child: Text(
                    'Contactanos',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40
                    ),
                  ),
                ),
              ),
              FittedBox(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      'Escribe tus datos y cuentanos como podemos atenderte',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),
                    ),
                  ),
                ),
              ),
              TextBoxField(
                labelText: 'Nombre',
                hintText: 'Ingrese su Nombre',
              ),
              TextBoxField(
                labelText: 'Apellido',
                hintText: 'Ingrese su Apellido',
              ),
              TextBoxField(
                labelText: 'Correo Electronico',
                hintText: 'Ingrese su correo Electronico',
              ),
              TextBoxField(
                labelText: 'Mensaje',
                hintText: 'Ingrese su Mensaje',
              ),
            ],
          ),
        ),
      ),
    );
  }
}