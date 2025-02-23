import 'package:flutter/material.dart';

enum ButtonVariant { outlined, filled, text, danger }

class Button extends StatelessWidget {
  final String label;
  final Function()? onPressed;
  final Widget? icon;
  final ButtonVariant variant;
  final bool isLoading;

  const Button({
    super.key,
    this.onPressed,
    required this.label,
    this.icon,
    this.variant = ButtonVariant.filled,
    this.isLoading = false,
  });

  Widget getWidget() {
    final bool isDisabled = isLoading || onPressed == null;

    Widget buttonContent = isLoading
        ? const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            strokeWidth: 2.0,
          )
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) ...[
                icon!,
                const SizedBox(width: 8),
              ],
              Text(
                label,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          );

    switch (variant) {
      case ButtonVariant.filled:
      case ButtonVariant.danger:
        return SizedBox(
          width: double.infinity,
          height: 56,
          child: FilledButton(
            onPressed: isDisabled ? null : onPressed,
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                variant == ButtonVariant.danger
                    ? Colors.redAccent
                    : Colors.blueAccent,
              ),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            child: buttonContent,
          ),
        );
      case ButtonVariant.outlined:
        return SizedBox(
          width: double.infinity,
          height: 56,
          child: OutlinedButton(
            onPressed: isDisabled ? null : onPressed,
            style: ButtonStyle(
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            child: buttonContent,
          ),
        );
      case ButtonVariant.text:
        return SizedBox(
          width: double.infinity,
          height: 56,
          child: TextButton(
            onPressed: isDisabled ? null : onPressed,
            style: ButtonStyle(
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            child: buttonContent,
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return getWidget();
  }
}
