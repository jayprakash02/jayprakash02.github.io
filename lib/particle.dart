import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_flutter.dart';

class CircularParticleScreen extends StatelessWidget {
  const CircularParticleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        key: UniqueKey(),
        child: Center(
          child: CircularParticle(
            // key: UniqueKey(),
            awayRadius: 100,
            numberOfParticles: 100,
            speedOfParticles: 1,
            height: screenHeight,
            width: screenWidth,
            onTapAnimation: true,
            particleColor: Colors.white.withAlpha(150),
            awayAnimationDuration: const Duration(milliseconds: 400),
            maxParticleSize: 5,
            isRandSize: true,
            isRandomColor: true,
            randColorList: [
              Colors.white.withAlpha(210),
            ],
            awayAnimationCurve: Curves.easeInOutBack,
            enableHover: true,
            hoverColor: Colors.white,
            hoverRadius: 90,
            connectDots: false, //not recommended
          ),
        ),
      ),
    );
  }
}
