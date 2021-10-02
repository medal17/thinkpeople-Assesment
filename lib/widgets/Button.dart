import 'package:flutter/material.dart';
import 'package:thinkpeople_app/config.dart';

class Button extends StatelessWidget {
  String title;
  final page;
  
  Button(this.title, this.page);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>page));},
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.07),
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                // color: Color(0x186709FF)
                color: primaryGreen,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow( color: secondaryColor.withOpacity(0.5), blurRadius: 10, spreadRadius: 0.5,offset: Offset(10,6) )
                  ]
              ),
              child: Text(title, style: buttonTextStyle,),
            ),
          ),
        ),
      ],
    );
  }
}