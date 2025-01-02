import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ReviewCard extends HookWidget {


  final String imageUrl;
  final String name;
  final String days;
  final String content;

  ReviewCard(
      {required this.imageUrl,
      required this.name,
      required this.days,
      required this.content});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage:
                    NetworkImage(imageUrl), // Replace with your image
                radius: 20,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    days,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                children: List.generate(
                  4,
                  (index) => Icon(Icons.star, color: Colors.orange, size: 18),
                )..add(
                    Icon(Icons.star_border, color: Colors.orange, size: 18),
                  ),
              ),
              Icon(Icons.more_vert)
            ],
          ),
          SizedBox(height: 16),
          Text(
            content,
            style: TextStyle(fontSize: 14, height: 1.5, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
