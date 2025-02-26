import 'package:flutter/material.dart';

class FormTitle extends StatelessWidget {
  final String value;
  const FormTitle({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
