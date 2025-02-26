import 'package:erp/utils/colors.dart';
import 'package:flutter/material.dart';

class FormContent extends StatelessWidget {
  final Widget? child;
  const FormContent({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: CustomColors.form,
        border: Border.all(color: CustomColors.border),
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
