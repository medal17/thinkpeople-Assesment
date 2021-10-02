import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  Widget widget;

  Background(this.widget);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg.png'),
                fit: BoxFit.cover,
                alignment: Alignment.topLeft)),
        child: widget,
    
    );
  }
}