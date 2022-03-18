import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/soical_icon.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIcon(
              icon: FontAwesomeIcons.envelope,
            ),
            CustomIcon(
              icon: FontAwesomeIcons.instagram,
            ),
            CustomIcon(
              icon: FontAwesomeIcons.facebook,
            ),
            CustomIcon(
              icon: FontAwesomeIcons.github,
            ),
            CustomIcon(
              icon: FontAwesomeIcons.linkedinIn,
            ),
          ],
        ));
  }
}
