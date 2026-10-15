import 'package:flutter/material.dart';

import '../../theme/ds_theme.dart';
import '../../tokens/ds_spacing.dart';
import '../../tokens/ds_typography.dart';

/// Campo de texto com rótulo acima, dica e mensagem de erro opcional.
class DsTextField extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final String? hint;
  final String? errorText;
  final IconData? icon;
  final bool obscureText;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;

  const DsTextField({
    super.key,
    required this.label,
    this.controller,
    this.hint,
    this.errorText,
    this.icon,
    this.obscureText = false,
    this.keyboardType,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final c = context.ds;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: DsTypography.label.copyWith(color: c.textPrimary)),
        const SizedBox(height: DsSpacing.xs),
        SizedBox(
          height: DsSizes.inputHeight,
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            keyboardType: keyboardType,
            onChanged: onChanged,
            style: DsTypography.body.copyWith(color: c.textPrimary),
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: DsTypography.body.copyWith(color: c.textSecondary),
              prefixIcon: icon == null ? null : Icon(icon, size: DsSizes.iconMd, color: c.textSecondary),
              errorText: errorText,
            ),
          ),
        ),
      ],
    );
  }
}
