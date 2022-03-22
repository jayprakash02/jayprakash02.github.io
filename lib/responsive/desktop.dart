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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: const Color.fromRGBO(26, 34, 44, 1),
        endDrawer: Drawer(
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: ListView(
            padding: EdgeInsets.only(top: 20),
            children: [
              Container(
                margin: EdgeInsets.all(20),
                // padding: EdgeInsets.all(),
                height: 70,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                      widget.selected = 0;
                    });
                  },
                  icon: Icon(
                    FontAwesomeIcons.home,
                    color: Colors.white,
                    size: 70,
                  ),
                ),
              ),
              Container(
                height: 70,
                margin: EdgeInsets.all(20),
                child: IconButton(
                  icon: Icon(
                    FontAwesomeIcons.brain,
                    color: Colors.white,
                    size: 70,
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
                height: 70,
                margin: EdgeInsets.all(20),
                child: IconButton(
                  icon: Icon(
                    FontAwesomeIcons.medal,
                    color: Colors.white,
                    size: 70,
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
                height: 70,
                margin: EdgeInsets.all(20),
                child: IconButton(
                  tooltip: 'Contacts',
                  icon: Icon(
                    FontAwesomeIcons.phone,
                    color: Colors.white,
                    size: 70,
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
        body: _getDrawerContext(widget.selected));
  }
}
