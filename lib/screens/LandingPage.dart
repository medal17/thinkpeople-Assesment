import 'package:flutter/material.dart';
import 'package:thinkpeople_app/config.dart';
import 'package:thinkpeople_app/screens/RegisterPage.dart';
import 'package:thinkpeople_app/widgets/BackgroundWidget.dart';
import 'package:thinkpeople_app/widgets/Button.dart';
import 'package:thinkpeople_app/widgets/InputTextField.dart';

class LandingPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
 

    return Scaffold(
        body: Background(Column(
          crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          height: MediaQuery.of(context).size.height*.6,
          child: Image.asset('assets/images/location.png', fit: BoxFit.fill, alignment: Alignment.bottomCenter ,)
        ),
        Text(
          'Discover New Places',
          style: smallTitleStyle,
        ),
        Container(
          // alignment: Alignment.center,
          margin: EdgeInsets.only(top: 8),
          width: MediaQuery.of(context).size.width * .5,
          child: Text(
            'Vulpitate vitae enim.Vulputate vitae',
            style: bodyStyle,textAlign: TextAlign.center, maxLines: 3,
          ),
        ),
        SizedBox(height: 35,),
        Button('GET STARTED', RegisterPage()),
      ],
    )));
  }
}
