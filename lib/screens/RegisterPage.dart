import 'package:flutter/material.dart';
import 'package:thinkpeople_app/config.dart';
import 'package:thinkpeople_app/screens/LoginPage.dart';
import 'package:thinkpeople_app/widgets/BackgroundWidget.dart';
import 'package:thinkpeople_app/widgets/Button.dart';
import 'package:thinkpeople_app/widgets/InputTextField.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
    return Scaffold(
        body: SingleChildScrollView(
          child: Background(Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
          SizedBox(height: 150,),
          Text(
            'Welcome on Board',
            style: smallTitleStyle,
          ),
          
          Container(
            // alignment: Alignment.center,
            margin: EdgeInsets.only(top: 8),
            width: MediaQuery.of(context).size.width * .9,
            child: Text(
              'Vulpitate vitae enim.Vulputate vitae enim',
              style: bodyStyle,textAlign: TextAlign.center, maxLines: 3,
            ),
          ),
        
          InputTextField(nameController, 'Name',secondaryColor),
          InputTextField(emailController, 'Email',secondaryColor),
          InputTextField(usernameController, 'Username',secondaryColor),
          InputTextField(passwordController, 'Password',secondaryColor),
        
          SizedBox(height: 15,),
          Button('Register', LoginPage()),
        
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an Account?  ', style: noSpaceBodyStyle,),
              GestureDetector(
                onTap: (){MaterialPageRoute(builder: (_)=>LoginPage());},
                child: Text('Signin', style: noSpaceTitleStyle,))
            ],
          ),
              SizedBox(height: 30,)
              ],
            )),
        ));
  }
}
