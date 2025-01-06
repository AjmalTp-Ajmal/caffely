import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class bottom_navigationbar extends StatelessWidget {
  const bottom_navigationbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40,
        width: double.infinity,
        color: context.colors.primary,
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HugeIcon(
                    icon: HugeIcons.strokeRoundedHome01,
                    color: context.colors.subtxtclrbold),
                HugeIcon(
                    icon: HugeIcons.strokeRoundedStore02,
                    color: context.colors.subtxtclrbold),
                HugeIcon(
                    icon: HugeIcons.strokeRoundedStickyNote02,
                    color: context.colors.subtxtclrbold),
                HugeIcon(
                    icon: HugeIcons.strokeRoundedUser,
                    color: context.colors.subtxtclrbold),
              ],
            )),
      ),
    );
  }
}
