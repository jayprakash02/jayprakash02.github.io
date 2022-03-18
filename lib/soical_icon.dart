import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatefulWidget {
  IconData icon = Icons.mail_rounded;
  CustomIcon({Key? key, required this.icon}) : super(key: key);
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
        child: Icon(widget.icon,
            size: 30, color: (hover) ? Colors.black : Colors.white),
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

BoxDecoration myBoxDecoration(Color color, double width, BoxShape shape) {
  return BoxDecoration(
      border: Border.all(
        color: color, //                   <--- border color
        width: 5.0,
      ),
      shape: shape,
      color: Colors.white);
}
