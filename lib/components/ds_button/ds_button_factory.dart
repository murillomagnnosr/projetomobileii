import 'package:flutter/material.dart';

import 'ds_button_component.dart';
import 'ds_button_view_model.dart';

/// Atalhos para montar o par view model + componente sem repetir código nas telas.
class DsButtonFactory {
  DsButtonFactory._();

  static Widget primary({required String label, required VoidCallback? onPressed, IconData? icon, bool isLoading = false, bool expanded = true}) {
    return DsButtonComponent(
      viewModel: DsButtonViewModel(label: label, icon: icon, isLoading: isLoading, expanded: expanded),
      onPressed: onPressed,
    );
  }

  static Widget secondary({required String label, required VoidCallback? onPressed, IconData? icon, bool expanded = true}) {
    return DsButtonComponent(
      viewModel: DsButtonViewModel(label: label, variant: DsButtonVariant.secondary, icon: icon, expanded: expanded),
      onPressed: onPressed,
    );
  }

  static Widget ghost({required String label, required VoidCallback? onPressed, IconData? icon}) {
    return DsButtonComponent(
      viewModel: DsButtonViewModel(label: label, variant: DsButtonVariant.ghost, icon: icon, expanded: false),
      onPressed: onPressed,
    );
  }
}
