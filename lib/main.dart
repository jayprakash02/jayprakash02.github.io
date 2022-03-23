import 'package:JayPrakash/responsive.dart';
import 'package:JayPrakash/responsive/desktop.dart';
import 'package:JayPrakash/responsive/mobile.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key, appTitle}) : super(key: key);
  static const appTitle = 'Jay Prakash';
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  get appTitle => MyApp.appTitle;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    dataLoadFunction(); // this function gets called
  }

  dataLoadFunction() async {
    setState(() {
      _isLoading = true; // your loader has started to load
    });
    // fetch you data over here
    setState(() {
      _isLoading = false; // your loder will stop to finish after the data fetch
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: _isLoading == true
          ? CircularProgressIndicator()
          : ResponsiveLayout(
              mobileScreenLayout: MobilePage(title: appTitle),
              webScreenLayout: DesktopPage(title: appTitle)),
    );
  }
}

// class MobilePage extends StatelessWidget {
//   const MobilePage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//       ),
//       backgroundColor: const Color.fromRGBO(26, 34, 44, 1),
//       body: Stack(
//         children: [
//           Positioned.fill(child: CircularParticleScreen()),
//           Positioned(
//               child: Home(
//             mobile: true,
//           ))
//         ],
//       ),
//       // floatingActionButton: CustomDrawer(),
//       bottomNavigationBar: BottomAppBar(
//         color: Colors.transparent,
//         child: Container(
//           child: Row(
//             children: [
//               IconButton(
//                 onPressed: () {},
//                 icon: Icon(FontAwesomeIcons.bars),
//                 color: Colors.white,
//               ),
//               Spacer(),
//               IconButton(
//                 onPressed: () {},
//                 icon: Icon(Icons.close),
//                 color: Colors.white,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
