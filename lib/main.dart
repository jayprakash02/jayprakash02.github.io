import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/drawer.dart';
import 'package:untitled/home.dart';
import 'package:untitled/particle.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const appTitle = 'Jay Prakash';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
        children: const [
          Positioned.fill(child: CircularParticleScreen()),
          Positioned(child: Home())
        ],
      ),
      endDrawer: const Drawer(
        child: CustomDrawer(),
      ),
    );
  }
}
