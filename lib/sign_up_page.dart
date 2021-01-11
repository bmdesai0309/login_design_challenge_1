import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  Container buildTitle(ThemeData theme) {
    return Container(
      padding: const EdgeInsets.only(bottom: 8.0),
      alignment: Alignment.bottomCenter,
      height: 60.0,
      child: Text(
        'Welcome!',
        style: TextStyle(fontSize: 18.0, color: theme.primaryColorDark),
      ),
    );
  }

  SizedBox buildFacebookBtn() {
    return SizedBox(
      width: 250.0,
      child: FlatButton(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        color: Color(0xFF486198),
        onPressed: () {},
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              MdiIcons.facebook,
              size: 16.0,
            ),
            SizedBox(
              width: 8.0,
            ),
            Text('Sign up with Facebook'),
          ],
        ),
      ),
    );
  }

  Padding buildText(ThemeData theme, String text, double fontSize) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(
          color: theme.primaryColorDark,
          fontSize: fontSize,
        ),
      ),
    );
  }

  Padding buildInputField(
      String labelText, String hintText, bool isobsured, ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          hintStyle: TextStyle(color: theme.primaryColorDark),
        ),
        obscureText: isobsured,
      ),
    );
  }

  SizedBox buildSignupBtn(ThemeData theme) {
    return SizedBox(
      width: 250.0,
      child: RaisedButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        padding: EdgeInsets.symmetric(vertical: 12.0),
        color: theme.buttonColor,
        child: Text('Sign up with email'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.fromLTRB(16.0, kToolbarHeight, 16.0, 16.0),
      children: [
        Align(
          child: SizedBox(
            width: 320.0,
            child: Card(
              color: theme.primaryColor,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  buildTitle(theme),
                  buildFacebookBtn(),
                  buildText(theme, 'or', 12.0),
                  buildText(theme, 'Sign up with your email address', 12.0),
                  buildInputField('Email', 'your@email.com', false, theme),
                  buildInputField('Password', '', true, theme),
                  SizedBox(
                    height: 18.0,
                  ),
                  buildSignupBtn(theme),
                  buildText(theme, 'By signing up you agree with our tearms & conditions', 8.0),
                  SizedBox(
                    height: 18.0,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
