import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/drawer.dart';
import 'package:untitled/home.dart';
import 'package:untitled/particle.dart';
import 'package:untitled/responsive.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const appTitle = 'Jay Prakash';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: ResponsiveLayout(
          mobileScreenLayout: MobilePage(title: appTitle),
          webScreenLayout: DesktopPage(title: appTitle)),
    );
  }
}

class DesktopPage extends StatelessWidget {
  const DesktopPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: const Color.fromRGBO(26, 34, 44, 1),
      body: Stack(
        children: [
          Positioned.fill(child: CircularParticleScreen()),
          Positioned(
              child: Home(
            mobile: false,
          ))
        ],
      ),
      endDrawer: const Drawer(
        child: CustomDrawer(),
      ),
    );
  }
}

class MobilePage extends StatelessWidget {
  const MobilePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: const Color.fromRGBO(26, 34, 44, 1),
      body: Stack(
        children: [
          Positioned.fill(child: CircularParticleScreen()),
          Positioned(
              child: Home(
            mobile: true,
          ))
        ],
      ),
      // floatingActionButton: CustomDrawer(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Container(
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(FontAwesomeIcons.bars),
                color: Colors.white,
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.close),
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
