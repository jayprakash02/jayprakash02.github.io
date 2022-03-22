import 'package:flutter/material.dart';

import '../particle.dart';
import '../social.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: const CircularParticleScreen()),
        Positioned(
            child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Jay Prakash",
                style: TextStyle(
                    fontSize: 100,
                    color: Colors.white,
                    fontFamily: 'Montserrat'),
              ),
              const Text(
                "Django Developer",
                style: TextStyle(
                    fontSize: 50, color: Colors.white, fontFamily: 'OpenSans'),
              ),
              SocialIcon(
                mobile: false,
              )
            ],
          ),
        ))
      ],
    );
  }
}
