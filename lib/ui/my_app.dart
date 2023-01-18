import 'package:change_color_on_tap/provider/view_model_notifier.dart';
import 'package:change_color_on_tap/ui/screen.dart';
import 'package:change_color_on_tap/view_model/view_model.dart';
import 'package:flutter/material.dart';

/// ## main widget of the app
class MyApp extends StatelessWidget {
  /// ### constructor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'change color on tap',
      home: ViewModelNotifier(viewModel: ViewModel(), child: const Screen()),
    );
  }
}
