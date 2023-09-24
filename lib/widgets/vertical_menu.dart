import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class VerticalMenu extends StatelessWidget {
  const VerticalMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Align(
          alignment: Alignment.topLeft,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10),
                  width: 350,
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 97, 68, 167),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 13,
                        offset: const Offset(0, 4),
                      )
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/Saly-24.png',
                        width: 100,
                        height: 100,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: <Widget>[
                            const Text(
                              'Flutter Developer',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            const Text(
                              '8 hours',
                              style: TextStyle(
                                color: Color.fromARGB(255, 175, 175, 175),
                                fontSize: 12,
                              ),
                            ),
                            RatingBar.builder(
                                initialRating: 5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 18,
                                itemPadding:
                                   const EdgeInsets.symmetric(horizontal: 1),
                                itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                onRatingUpdate: (rating) {
                                  if (kDebugMode) {
                                    print(rating);
                                  }
                                }),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: 350,
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 97, 68, 167),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 13,
                        offset: const Offset(0, 4),
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/Saly-13.png',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: <Widget>[
                            const Text(
                              'Full Stack Javascript',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            const Text(
                              '6 hours',
                              style: TextStyle(
                                color: Color.fromARGB(255, 175, 175, 175),
                                fontSize: 12,
                              ),
                            ),
                            RatingBar.builder(
                                initialRating: 5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 18,
                                itemPadding:
                                   const EdgeInsets.symmetric(horizontal: 1),
                                itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                onRatingUpdate: (rating) {
                                  if (kDebugMode) {
                                    print(rating);
                                  }
                                }),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ])),
    );
  }
}
