import 'package:change_color_on_tap/services/utils.dart';
import 'package:flutter/material.dart';

/// ## ViewModel class
class ViewModel extends ChangeNotifier {
  Color _color;

  /// ### color getter
  Color get color => _color;

  /// ### constructor
  ViewModel({Color? initialColor})
      : _color = initialColor ?? const Color(kWhiteColor);

  /// ### chance color function
  void changeColor() {
    _color = Utils.randomColor();
    notifyListeners();
  }
}
