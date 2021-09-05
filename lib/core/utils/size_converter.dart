import 'dart:math';

class SizeConverter {
  static String formatBytes(int bytes, int decimals) {
    if (bytes <= 0) return "0 B";
    return ((bytes / pow(1024, 2)).toStringAsFixed(decimals)) + ' ' + "MB";
  }
}
