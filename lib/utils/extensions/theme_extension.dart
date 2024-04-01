import 'package:flutter/material.dart';
import 'package:image_comparison/presentation/theme/theme.dart';

extension ThemeExtension on BuildContext {
  ThemeData get theme => appTheme;
}
