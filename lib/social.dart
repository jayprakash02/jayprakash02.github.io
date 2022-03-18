import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/soical_icon.dart';

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
                  CustomIcon(
                    icon: FontAwesomeIcons.envelope,
                    url: "mailto:name@email.com",
                  ),
                  CustomIcon(
                    icon: FontAwesomeIcons.instagram,
                    url: "https://instagram.com/jay_prakash",
                  ),
                  CustomIcon(
                    icon: FontAwesomeIcons.github,
                    url: "https://github.com/jayprakash02",
                  ),
                  CustomIcon(
                    icon: FontAwesomeIcons.linkedinIn,
                    url: "https://linkedin.com/in/jay-prakash=002",
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIcon(
                    icon: FontAwesomeIcons.envelope,
                    url: "mailto:name@email.com",
                  ),
                  CustomIcon(
                    icon: FontAwesomeIcons.instagram,
                    url: "https://instagram.com/jay_prakash",
                  ),
                  CustomIcon(
                    icon: FontAwesomeIcons.facebook,
                    url: "https://facebook.com/jp.star",
                  ),
                  CustomIcon(
                    icon: FontAwesomeIcons.github,
                    url: "https://github.com/jayprakash02",
                  ),
                  CustomIcon(
                    icon: FontAwesomeIcons.linkedinIn,
                    url: "https://linkedin.com/in/jay-prakash=002",
                  ),
                ],
              ));
  }
}
