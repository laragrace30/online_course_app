import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/menu.dart';
import '../widgets/vertical_menu.dart';
import 'course_detail.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  final List<MenuData> horizontalMenuData = [
    MenuData(
      startColor: 0xFF9288E4,
      endColor: 0xFF534EA7,
      headlinecolor: 0xFFAFA8EE,
      courseHeadline: 'Recommended',
      courseTitle: 'UI/UX DESIGNER\nBEGINNER',
      courseImage: 'assets/images/saly-10.png',
    ),
    
    MenuData(
      startColor: 0xFFF4EF65,
      endColor: 0xFFC63956,
      headlinecolor: 0xFFF4C67A,
      courseHeadline: 'New Class',
      courseTitle: 'GRAPHIC DESIGN\nMASTER',
      courseImage: 'assets/images/saly-36.png',
    ),
    MenuData(
      startColor: 0xFF393FC6,
      endColor: 0xFF393FC6,
      headlinecolor: 0xFF4A7099,
      courseHeadline: 'New Class',
      courseTitle: 'VIRTUAL DESIGN\nMASTER',
      courseImage: 'assets/images/saly-10.png',
    ),
  ];

  final List<VerticalMenuData> verticalMenuData = [
    VerticalMenuData(
      courseImage: 'assets/images/saly-24.png',
      courseTitle: 'Flutter Developer',
      courseDuration: '8 Hours',
      courseRating: 3.5,
    ),
     VerticalMenuData(
      courseImage: 'assets/images/saly-13.png',
      courseTitle: 'Flutter Stack Javascript',
      courseDuration: '6 Hours',
      courseRating: 4.0,
    ),
     VerticalMenuData(
      courseImage: 'assets/images/saly-24.png',
      courseTitle: 'React Developer',
      courseDuration: '6 Hours',
      courseRating: 5.0,
    ),
     VerticalMenuData(
      courseImage: 'assets/images/saly-13.png',
      courseTitle: 'Software Developer',
      courseDuration: '12 Hours',
      courseRating: 3.3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(left: 20, right: 20),
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Online',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 36,
                  ),
                ),
                  Text(
                    'Master Class',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 36,
                    ),
                  ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CourseDetail(),
                      ),
                    );
                  },
            child: SizedBox(
              height: 349,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: horizontalMenuData.length,
                itemBuilder: (context, index) {
                  final data = horizontalMenuData[index];
                  return Menu(
                    startColor: data.startColor,
                    endColor: data.endColor,
                    headlinecolor: data.headlinecolor,
                    courseHeadline: data.courseHeadline,
                    courseTitle: data.courseTitle,
                    courseImage: data.courseImage,
                  );
                },
              ),
            ),
            ),
            const SizedBox(
              height: 34,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Free online class',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                Text(
                  'From over 80 lectures',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF9C9A9A),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            ListView.builder(
              itemCount: verticalMenuData.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final data = verticalMenuData[index];
                return VerticalMenu(
                  courseImage: data.courseImage,
                  courseTitle: data.courseTitle,
                  courseDuration: data.courseDuration,
                  courseRating: data.courseRating,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

// Define a class to hold data for the horizontal Menu
class MenuData {
  final int startColor;
  final int endColor;
  final int headlinecolor;
  final String courseHeadline;
  final String courseTitle;
  final String courseImage;

  MenuData({
    required this.startColor,
    required this.endColor,
    required this.headlinecolor,
    required this.courseHeadline,
    required this.courseTitle,
    required this.courseImage,
  });
}

class VerticalMenuData {
  final String courseImage;
  final String courseTitle;
  final String courseDuration;
  final double courseRating;

  VerticalMenuData({
    required this.courseImage,
    required this.courseTitle,
    required this.courseDuration,
    required this.courseRating,
  });
}
