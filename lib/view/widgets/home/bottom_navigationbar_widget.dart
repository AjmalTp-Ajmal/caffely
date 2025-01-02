
import 'package:caffely/core/theme/extensions/theme_extension.dart';
import 'package:flutter/material.dart';

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
        child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.home),
                Icon(Icons.home),
                Icon(Icons.home),
                Icon(Icons.home)
              ],
            )),
      ),
    );
  }
}