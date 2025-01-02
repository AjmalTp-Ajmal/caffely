import 'package:caffely/core/theme/space_extension.dart';
import 'package:flutter/material.dart';

extension AppSpaceTheme on BuildContext {
  AppSpaceExtension get space {
    return Theme.of(this).extension<AppSpaceExtension>()!;
  }
}
