import 'package:change_color_on_tap/provider/view_model_notifier.dart';
import 'package:flutter/material.dart';

/// ## screen widget
class Screen extends StatelessWidget {
  /// ### constructor
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = ViewModelNotifier.of(context);

    return Scaffold(
      body: GestureDetector(
        onTap: viewModel?.changeColor,
        child: AnimatedContainer(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          //color: viewModel?.color ?? Colors.red,
          decoration: BoxDecoration(
            color: viewModel?.color ?? Colors.red,
          ),
          duration: const Duration(seconds: 1),
          curve: Curves.easeInCubic,
          child: const Center(
            child: Text(
              "Hey there",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
