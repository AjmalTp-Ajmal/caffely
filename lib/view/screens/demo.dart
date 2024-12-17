import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Demo extends HookWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipPath(
        clipper: MyClip(),
        child: Stack(children: [
          Container(
            clipBehavior: Clip.none,
            color: Colors.amber,
            height: 600,
          ),
        ]),
      ),
    );
  }
}

class MyClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height - 100;

    final path = Path();
    path.lineTo(0, h);
    path.quadraticBezierTo(w * 0.5, h + 100, w, h);
    path.lineTo(w, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
