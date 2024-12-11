import 'package:flutter/material.dart';


class Styledtext extends StatelessWidget {

  const Styledtext(this.text,this.size , {super.key});
  final double size;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        style: TextStyle(
          color: Colors.white, 
          fontSize: size),
    );
  }
} 