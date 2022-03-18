import 'package:flutter/material.dart';
import 'package:untitled/social.dart';

class Home extends StatefulWidget {
  bool mobile;

  Home({Key? key, required this.mobile}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Jay Prakash",
            style: TextStyle(
                fontSize: (widget.mobile) ? 70 : 100,
                color: Colors.white,
                fontFamily: 'Montserrat'),
          ),
          Text(
            "Django Developer",
            style: TextStyle(
                fontSize: (widget.mobile) ? 30 : 50,
                color: Colors.white,
                fontFamily: 'OpenSans'),
          ),
          SocialIcon(
            mobile: widget.mobile,
          )
        ],
      ),
    );
  }
}
