import 'package:flutter/material.dart';
import 'package:thinkpeople_app/config.dart';

class InputTextField extends StatelessWidget {

  TextEditingController _controller;
  String placeholder;
  Color color;

  InputTextField(this._controller, this.placeholder, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.07) ,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: secondaryColor.withOpacity(0.4),
        borderRadius: BorderRadius.circular(12)
      ),
      child: TextField(  
        controller: _controller,
        decoration: InputDecoration(
          hintStyle: inputPlaceholderStyle,
          focusColor: primaryGreen,
          labelStyle: smallTitleStyle,
          labelText: placeholder,
          border: InputBorder.none
        ),
      ),
    );
  }
}