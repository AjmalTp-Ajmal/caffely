import 'package:caffely/core/theme/color_extension.dart';
import 'package:flutter/material.dart';

extension AppTheme on BuildContext {
  ColorExtension get colors {
    return Theme.of(this).extension<ColorExtension>()!;
  }
 
}
