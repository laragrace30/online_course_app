import 'package:flutter/material.dart';
import '../widgets/menu.dart';
import '../widgets/vertical_menu.dart';
import 'course_detail.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 21, 71),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.only(left: 20, right: 20),
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Online',
                  style: TextStyle(color: Colors.white, fontSize: 35),
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
                child: const Text(
                  'Master Class',
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(children: [
              Menu(),
            ]),
            const SizedBox(
              height: 20,
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Free Online Class',
                  style: (TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  )),
                ),
                Text(
                  'From over 80 Lectures',
                  style: (TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  )),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Column(
              children: [
                VerticalMenu(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
