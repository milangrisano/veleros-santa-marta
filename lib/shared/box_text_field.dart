import 'package:flutter/material.dart';

class BoxEmailField extends StatelessWidget {
  final String hintText;
  final String labelText;
  const BoxEmailField({
    super.key,
    required this.hintText,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          prefixIcon: const Icon(Icons.mail_outline),
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(
            backgroundColor: Colors.white,
          ),
          labelText: labelText,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          // border: BorderRadius.all(color: Colors.white)
        ),
      ),
    );
  }
}
