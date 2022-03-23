import 'package:JayPrakash/pages/contact.dart';
import 'package:JayPrakash/pages/project.dart';
import 'package:JayPrakash/pages/skills.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../pages/m_homepage.dart';

class MobilePage extends StatefulWidget {
  MobilePage({Key? key, required this.title}) : super(key: key);
  int selected = 0;
  final String title;
  @override
  State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage> {
  final int selected = 0;
  _getDrawerContext(int pos) {
    switch (pos) {
      case 1:
        return new Text("1st");
      case 2:
        return SkillsPage();
      case 3:
        return ProjectPage();
      case 4:
        return ContactPage();
      default:
        return MHomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: const Color.fromRGBO(26, 34, 44, 1),
      endDrawer: Container(
        margin: EdgeInsets.all(50),
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              // padding: EdgeInsets.all(),
              height: 50,
              child: IconButton(
                iconSize: 50,
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                    widget.selected = 0;
                  });
                },
                icon: Icon(
                  FontAwesomeIcons.home,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.all(20),
              child: IconButton(
                iconSize: 50,
                icon: Icon(
                  FontAwesomeIcons.brain,
                  color: Colors.white,
                  size: 50,
                ),
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                    widget.selected = 2;
                  });
                },
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.all(20),
              child: IconButton(
                iconSize: 50,
                icon: Icon(
                  FontAwesomeIcons.medal,
                  color: Colors.white,
                  size: 50,
                ),
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                    widget.selected = 3;
                  });
                },
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.all(20),
              child: IconButton(
                iconSize: 50,
                tooltip: 'Contacts',
                icon: Icon(
                  FontAwesomeIcons.phone,
                  color: Colors.white,
                  size: 50,
                ),
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                    widget.selected = 4;
                  });
                },
              ),
            ),
          ],
        ),
      ),
      body: _getDrawerContext(widget.selected),
    );
  }
}
