import 'package:flutter/material.dart';
import 'package:hostel_booker/utils/styling.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(8.0, 15, 8.0, 8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Welcome Back',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Column(
            children: [
              Text('Sign in'),
              TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            ],
          )
        ],
      )),
    );
  }
}
