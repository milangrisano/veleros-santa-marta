import 'package:flutter/material.dart';
import 'package:responsive_app/shared/box_email_field.dart';
import 'package:emailjs/emailjs.dart' as emailjs;

class EmailBox extends StatefulWidget {
  const EmailBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<EmailBox> createState() => _EmailBoxState();
}

class _EmailBoxState extends State<EmailBox> {
  final controllerName = TextEditingController();
  final controllerEmail = TextEditingController();
  final controllerMessages = TextEditingController();
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
                controller: controllerName,
                labelText: 'Nombre y Apellido',
                hintText: 'Ingrese su Nombre y Apellido',
                maxWidth: size.width,
                maxHeigth: currentHeight < 870 ? 35 : size.height,
                labelSizeFont: currentWidth < 470 ? 10 : 16,
                fontTextSize: currentWidth < 470 ? 10 : 16,
              ),
              BoxEmailField(
                controller: controllerEmail,
                labelText: 'Correo Electronico',
                hintText: 'Ingrese su correo Electronico',
                maxWidth: size.width,
                maxHeigth: currentHeight < 870 ? 35 : size.height,
                labelSizeFont: currentWidth < 470 ? 10 : 16,
                fontTextSize: currentWidth < 470 ? 10 : 16,
              ),
              BoxEmailField(
                controller: controllerMessages,
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
                  onPressed: () {
                    sendEmail(
                      name: controllerName.text,
                      email: controllerEmail.text,
                      messages: controllerMessages.text,
                    );
                    controllerName.clear();
                    controllerEmail.clear();
                    controllerMessages.clear();
                  },
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

sendEmail({
  required String name,
  required String email,
  required String messages,
}) async {
  try {
    await emailjs.send(
      'service_4x6c0u6',
      'template_ylf1j4l',
      {
        'to_name': name,
        'to_email': email,
        'message': messages,
      },
      const emailjs.Options(
          publicKey: 'L_ap8poCDltF_zkrj',
          privateKey: 'YOUR_PRIVATE_KEY',
          limitRate: emailjs.LimitRate(
            id: 'app',
            throttle: 10000,
          )),
    );
  } catch (error) {
    if (error is emailjs.EmailJSResponseStatus) {}
  }
}
