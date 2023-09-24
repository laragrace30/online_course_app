import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/course_detail_list.dart';
import '../widgets/profile_list.dart';

class CourseDetail extends StatefulWidget {
  const CourseDetail({super.key});

  @override
  _CourseDetailState createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 21, 71),
      body: Center(
        child: ListView(
          children: [
            Container(
              height: 390,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(22),
                    bottomRight: Radius.circular(22),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color.fromARGB(255, 255, 183, 75), Colors.orange],
                  ),
                  image: DecorationImage(
                      alignment: Alignment.bottomRight,
                      image: AssetImage('assets/images/Saly-36.png'))),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 22,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RatingBar.builder(
                      initialRating: 5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 18,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                      itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                      onRatingUpdate: (rating) {
                        if (kDebugMode) {
                          print(rating);
                        }
                      }),
                  const SizedBox(
                    height: 11,
                  ),
                  const Text(
                    'Graphic Design Master',
                    overflow: TextOverflow.ellipsis,
                    style: (TextStyle(color: Colors.white, fontSize: 25)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 110,
                        child: Stack(
                          children: [
                            ProfileList(),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Column(
                    children: [
                    CourseDetailList(),
                    ]
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
