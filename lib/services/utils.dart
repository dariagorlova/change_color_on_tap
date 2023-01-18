import 'dart:math';
import 'dart:ui';

/// ### max color number
const kWhiteColor = 0xffffffff;

/// ## utils class
class Utils {
  /// ### static function for  a random color generation
  static Color randomColor() => Color(Random().nextInt(kWhiteColor));
}
