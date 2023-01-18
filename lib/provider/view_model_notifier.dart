import 'package:change_color_on_tap/view_model/view_model.dart';
import 'package:flutter/material.dart';

/// ## simple state management class
class ViewModelNotifier extends InheritedNotifier<ViewModel> {
  /// ### data class
  final ViewModel viewModel;

  /// ### constructor
  const ViewModelNotifier({
    Key? key,
    required this.viewModel,
    required Widget child,
  }) : super(
          key: key,
          notifier: viewModel,
          child: child,
        );

  /// ### "subscribe and get model" helper function
  static ViewModel? of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<ViewModelNotifier>()
      ?.viewModel;
}
