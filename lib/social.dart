import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'm_social_icon.dart';
import 'soical_icon.dart';

class SocialIcon extends StatelessWidget {
  bool mobile = false;
  SocialIcon({Key? key, required this.mobile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 30),
        child: (mobile)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MCustomIcon(
                    icon: FontAwesomeIcons.envelope,
                    url: "mailto:unijay12@gmail.com",
                  ),
                  MCustomIcon(
                    icon: FontAwesomeIcons.instagram,
                    url: "https://instagram.com/jay_prakash",
                  ),
                  MCustomIcon(
                    icon: FontAwesomeIcons.github,
                    url: "https://github.com/jayprakash02",
                  ),
                  MCustomIcon(
                    icon: FontAwesomeIcons.linkedinIn,
                    url: "https://linkedin.com/in/jay-prakash-002",
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIcon(
                    icon: FontAwesomeIcons.envelope,
                    url: "mailto:unijay12@gmail.com",
                  ),
                  CustomIcon(
                    icon: FontAwesomeIcons.instagram,
                    url: "https://instagram.com/jay_prakash",
                  ),
                  CustomIcon(
                    icon: FontAwesomeIcons.facebook,
                    url: "https://facebook.com/jp.star.02",
                  ),
                  CustomIcon(
                    icon: FontAwesomeIcons.github,
                    url: "https://github.com/jayprakash02",
                  ),
                  CustomIcon(
                    icon: FontAwesomeIcons.linkedinIn,
                    url: "https://linkedin.com/in/jay-prakash-002",
                  ),
                ],
              ));
  }
}
