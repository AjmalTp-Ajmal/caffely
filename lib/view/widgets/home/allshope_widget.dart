import 'package:flutter/material.dart';

class allshope extends StatelessWidget {
  const allshope({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //   child: const Column(
      // children: [
      //   Text("vdsvdsv"),
      //   Text("dfdss"),
      // ],
      // )
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Container(
                height: 40,
                width: 40,
                color: Colors.amber,
              ),
              const Column(
                children: [Text("ssafadf"), Text("cdfdsv"), Text("vdfds")],
              )
            ],
          );
        },
      ),
    );
  }
}
