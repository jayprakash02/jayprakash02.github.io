import 'package:flutter/material.dart';

import '../particle.dart';
import '../social.dart';

class MHomePage extends StatelessWidget {
  const MHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: const CircularParticleScreen()),
        Positioned(
            child: Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Jay Prakash",
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontFamily: 'Montserrat'),
              ),
              const Text(
                "Django Developer",
                style: TextStyle(
                    fontSize: 40, color: Colors.white, fontFamily: 'OpenSans'),
              ),
              SocialIcon(
                mobile: true,
              )
            ],
          ),
        )),
      ],
    );
  }
}
