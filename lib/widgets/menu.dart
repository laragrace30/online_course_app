import 'package:flutter/material.dart';

import 'course_headline.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});
   
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
       Container(
       padding: const EdgeInsets.all(06),
       width: 170, 
        height: 270, 
        decoration: BoxDecoration(
        gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color.fromARGB(255, 218, 115, 236),Colors.purple],
      ),
      borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children:<Widget>[
            const CourseHeadline(
              headline: 'Recommended',
            ),
          const Align(
        alignment: Alignment.topLeft,
        child: Text(
          'UI/UX Designer Beginner',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
          Image.asset('assets/images/Saly-10.png',
          width: 110,
          height: 170,
          fit: BoxFit.cover,
          ),
          ],
        ),
      ),

      const SizedBox(
              width: 20,
        ),

      Container(
       padding: const EdgeInsets.all(06),
       width: 170, 
        height: 270, 
        decoration: BoxDecoration(
        gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color.fromARGB(255, 255, 183, 75),Colors.orange],
      ),
      borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children:<Widget>[
            const CourseHeadline(
              headline: 'New Class',
            ),
             const Align(
        alignment: Alignment.topLeft,
        child: Text(
          'Graphic Design Master',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
          Image.asset ('assets/images/Saly-36.png',
          width: 130,
          height: 170,
          fit: BoxFit.cover,
          ),
          ]
        ),
      
      ),
      const SizedBox(
              width: 20,
            ),
      Container(
        padding: const EdgeInsets.all(06),
       width: 170, 
        height: 270, 
        decoration: BoxDecoration(
        gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color.fromARGB(255, 102, 85, 255),Color.fromARGB(255, 17, 0, 255)],
      ),
      borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children:<Widget>[
            const CourseHeadline(
              headline: 'New Class',
            ),
          const Align(
          alignment: Alignment.topLeft,
          child: Text(
          'Mobile Development',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
          Image.asset ('assets/images/Saly-19.png',
          width: 170,
          height: 190,
          fit: BoxFit.cover,
          ),
          ]
        ),
      ),
      ]
      ),
    );
  }
}
