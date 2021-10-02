import 'package:flutter/material.dart';
import 'package:thinkpeople_app/config.dart';
import 'package:thinkpeople_app/screens/RegisterPage.dart';
import 'package:thinkpeople_app/widgets/BackgroundWidget.dart';
import 'package:thinkpeople_app/widgets/Button.dart';
import 'package:thinkpeople_app/widgets/InputTextField.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
        body: Background(Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              'Welcome Back',
              style: smallTitleStyle,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(top: 20, left: 5, right: 5),
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'assets/images/welcome.png',
                fit: BoxFit.fill,
                alignment: Alignment.bottomCenter,
              )),
        ),
        Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InputTextField(
                  usernameController,
                  'username',
                  secondaryColor.withOpacity(.4),
                ),
                InputTextField(
                  passwordController,
                  'password',
                  secondaryColor.withOpacity(.4),
                ),
                // SizedBox(height: 5,),
                Text(
                  'Forgot Password?',
                  style: noSpaceTitleStyle,
                ),

                Button('Log in', RegisterPage()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an Account?  ',
                      style: noSpaceBodyStyle,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => RegisterPage()));
                        },
                        child: Text(
                          'Sign up',
                          style: noSpaceTitleStyle,
                        ))
                  ],
                ),
                SizedBox(
                  height: 30,
                )
              ],
            )),
      ],
    )));
  }
}
