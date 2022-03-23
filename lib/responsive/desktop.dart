import 'package:JayPrakash/pages/contact.dart';
import 'package:JayPrakash/pages/homepage.dart';
import 'package:JayPrakash/pages/project.dart';
import 'package:JayPrakash/pages/skills.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DesktopPage extends StatefulWidget {
  DesktopPage({Key? key, required this.title}) : super(key: key);
  int selected = 0;
  final String title;
  @override
  State<DesktopPage> createState() => _DesktopPageState();
}

class _DesktopPageState extends State<DesktopPage> {
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
        return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(26, 34, 44, 1),
      body: _getDrawerContext(widget.selected),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            height: 50,
            child: IconButton(
              iconSize: 50,
              onPressed: () {
                setState(() {
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
            margin: EdgeInsets.all(20),
            height: 50,
            child: IconButton(
              iconSize: 50,
              icon: Icon(
                FontAwesomeIcons.brain,
                color: Colors.white,
                size: 50,
              ),
              onPressed: () {
                setState(() {
                  widget.selected = 2;
                });
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            height: 50,
            child: IconButton(
              iconSize: 50,
              icon: Icon(
                FontAwesomeIcons.medal,
                color: Colors.white,
                size: 50,
              ),
              onPressed: () {
                setState(() {
                  widget.selected = 3;
                });
              },
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            height: 50,
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
                  widget.selected = 4;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
