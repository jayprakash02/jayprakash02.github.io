import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MCustomIcon extends StatefulWidget {
  IconData icon = Icons.mail_rounded;
  String url;
  MCustomIcon({Key? key, required this.icon, required this.url})
      : super(key: key);
  @override
  State<MCustomIcon> createState() => _MCustomIconState();
}

class _MCustomIconState extends State<MCustomIcon> {
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(left: 10),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white, //                   <--- border color
              width: 4.0,
            ),
            shape: BoxShape.circle,
            color: (hover) ? Colors.white : Colors.transparent),
        child: IconButton(
          icon: Icon(widget.icon,
              size: 20, color: (hover) ? Colors.black : Colors.white),
          onPressed: () {
            launch(widget.url);
          },
        ),
      ),
      onTap: () {},
      onHover: (val) {
        setState(() {
          hover = val;
        });
      },
    );
  }
}
