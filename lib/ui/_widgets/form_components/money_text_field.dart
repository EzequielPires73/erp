import 'package:erp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class MoneyTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? label;
  final String? hintText;
  final bool validatorEnabled;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const MoneyTextField({
    super.key,
    required this.controller,
    this.label,
    this.hintText,
    this.validator,
    this.validatorEnabled = false,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  State<MoneyTextField> createState() => _MoneyTextFieldState();
}

class _MoneyTextFieldState extends State<MoneyTextField> {
  @override
  void initState() {
    super.initState();
    _formatMoneyInput();
    widget.controller.addListener(_formatMoneyInput);
  }

  void _formatMoneyInput() {
    String text = widget.controller.text.replaceAll(RegExp(r'[^0-9]'), '');
    if (text.isEmpty) return;

    double value = double.parse(text) / 100;
    String formatted =
        NumberFormat.currency(locale: 'pt_BR', symbol: '').format(value);

    widget.controller.value = TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }

  @override
  void dispose() {
    widget.controller.removeListener(_formatMoneyInput);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          Text(
            widget.label!,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        const SizedBox(height: 6),
        TextFormField(
          controller: widget.controller,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          validator: widget.validator,
          autovalidateMode: widget.validatorEnabled
              ? AutovalidateMode.onUserInteraction
              : null,
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          decoration: InputDecoration(
            hintText: widget.hintText ?? '0,00',
            hintStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Colors.white54),
            prefixIcon: widget.prefixIcon ??
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("R\$",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                ),
            suffixIcon: widget.suffixIcon,
            filled: true,
            fillColor: CustomColors.navbar,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(width: 1, color: CustomColors.border),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(width: 1, color: Colors.grey.shade800),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(width: 1, color: CustomColors.border),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(width: 1, color: Colors.red),
            ),
          ),
        ),
      ],
    );
  }
}
