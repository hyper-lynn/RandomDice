import 'package:flutter/material.dart';
import 'package:myapp/components/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "Random Dice",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: GradientContainer.mainTheme()
          )
        )
  );
}



