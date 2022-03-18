import 'package:flutter/material.dart';
import 'package:untitled/social.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static const IconData mail = IconData(0xe3c3, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Jay Prakash",
            style: TextStyle(
                fontSize: 100, color: Colors.white, fontFamily: 'Montserrat'),
          ),
          Text(
            "Django Developer",
            style: TextStyle(
                fontSize: 50, color: Colors.white, fontFamily: 'OpenSans'),
          ),
          SocialIcon()
        ],
      ),
    );
  }
}
