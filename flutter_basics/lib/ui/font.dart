
import 'package:flutter/material.dart';


TextStyle mTextStyleColor(TextStyle? style, Color color) {
  return (style ?? const TextStyle()).copyWith(
    color: color,
  );
}