import 'package:flutter/material.dart';

class ProfileList extends StatelessWidget {
  const ProfileList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
    children: <Widget>[
      SizedBox(
         width:110,
      child: Stack(
    children: <Widget>[
     Positioned(
      child: Container(
        height: 45,
        width: 45,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage('assets/images/Ellipse 3.png'),
            )),
      ),
    ),
    Positioned(
      left: 20,
      child: Container(
        height: 45,
        width: 45,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage('assets/images/Ellipse 4.png'),
            )),
      ),
    ),
    Positioned(
      left: 40,
      child: Container(
        height: 45,
        width: 45,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage('assets/images/Ellipse 5.png'),
            )),
      ),
    ),
    Positioned(
      left: 60,
      child: Container(
        height: 45,
        width: 45,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage('assets/images/Ellipse 6.png'),
            )),
      ),
    ),
    ],
      ),
      ),
      const SizedBox(
         width: 12,
           ),
          const Align(
          alignment: Alignment.topCenter,
         child: Text(
          '+28K Members',
           style: TextStyle(color: Colors.white,
          fontSize: 18),
         ),
        ),
        const SizedBox(
          width: 150,
        ),
      Container(
        height: 47,
        width: 54,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: const Color.fromARGB(255, 97, 68, 167),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 12,
          ),
          child:  Image.asset(
            'assets/images/Frame.png'
          ),
        ),
      ), 
    ],
    );
  }
}
