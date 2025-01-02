import 'package:caffely/core/theme/typography_extension.dart';
import 'package:flutter/material.dart';

extension Typographytheme on BuildContext {
  AppTypographyExtension get typography {
    return Theme.of(this).extension<AppTypographyExtension>()!;
  }
}
