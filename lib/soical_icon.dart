import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomIcon extends StatefulWidget {
  IconData icon = Icons.mail_rounded;
  String url;
  CustomIcon({Key? key, required this.icon, required this.url})
      : super(key: key);
  @override
  State<CustomIcon> createState() => _CustomIconState();
}

class _CustomIconState extends State<CustomIcon> {
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(left: 15),
        padding: EdgeInsets.all((hover) ? 20 : 10),
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white, //                   <--- border color
              width: 4.0,
            ),
            shape: BoxShape.circle,
            color: (hover) ? Colors.white : Colors.transparent),
        child: IconButton(
          icon: Icon(widget.icon,
              size: 30, color: (hover) ? Colors.black : Colors.white),
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
