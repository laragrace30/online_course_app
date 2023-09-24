import 'package:flutter/material.dart';

class CourseHeadline extends StatelessWidget {
  const CourseHeadline({Key? key, 
  required this.headline}) 
  : super(key: key);

  final String headline;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        padding: const EdgeInsets.all(10),
        width: 90,
        height: 35,
        decoration: BoxDecoration(
          color: const Color(0xFFAFA8EE),
          borderRadius: BorderRadius.circular(36),
        ),
        child: Text(
          headline,
          style: (
            const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 12,
            )
          )
        ),
      ),
    );
  }
}
