import 'package:flutter/material.dart';

enum DsButtonVariant { primary, secondary, ghost }

/// Estado imutável de um botão. A tela monta o view model; o componente só desenha.
@immutable
class DsButtonViewModel {
  final String label;
  final DsButtonVariant variant;
  final IconData? icon;
  final bool isLoading;
  final bool expanded;

  const DsButtonViewModel({
    required this.label,
    this.variant = DsButtonVariant.primary,
    this.icon,
    this.isLoading = false,
    this.expanded = true,
  });
}
