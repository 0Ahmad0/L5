import 'package:flutter/material.dart';
import 'package:login_ui_5a/constants/const.dart';
import 'package:login_ui_5a/widgets/build_textfiled.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: KBackColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: size.width * 0.7,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/background.png'))),
            ),
            SizedBox(
              height: size.width * 0.1,
            ),
            Container(
              child: ListView(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.1, vertical: size.width * 0.1),
                shrinkWrap: true,
                children: [
                  BuildTextFiled(
                    text: 'Email',
                    icon: Icons.email_outlined,
                  ),
                  BuildTextFiled(
                    text: 'Username',
                    icon: Icons.person_outline,
                  ),
                  BuildTextFiled(
                    text: 'Password',
                    icon: Icons.lock_outline,
                  ),
                  Container(
                    width: double.infinity,
                    height: size.width *0.15,
                    margin: EdgeInsets.only(top: 10.0),
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withAlpha(16),
                              offset: Offset(-7,15),
                              blurRadius: 6
                          )
                        ]
                    ),
                    child: FlatButton(
                      color: KButtonColor,
                      onPressed: () {},
                      child: Text(
                        'SING UP',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: KTextColor
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: size.width *0.05,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text('Add User',style: TextStyle(
                      color: KTextColor
                  ),)),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (ctx)=>SignUpPage()));
                  }, child: Text('FAQ',style: TextStyle(
                      color: KTextColor
                  ),))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
