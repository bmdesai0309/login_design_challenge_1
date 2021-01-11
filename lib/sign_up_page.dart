import 'package:flutter/material.dart';

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
                children: [buildTitle(theme)],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
