import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  final Color backgroundColor;
  final String text;

  const Label({Key key, this.backgroundColor, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Text(this.text, style: TextStyle(color: Colors.white),),
      decoration: BoxDecoration(
        color: this.backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
