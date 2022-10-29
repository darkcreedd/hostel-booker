import 'package:flutter/material.dart';
// import 'package:hostel_booker/screens/booking_successful_screen.dart';

import 'package:hostel_booker/screens/signup_screen.dart';
// import 'package:hostel_booker/screens/filter_screen.dart';
// import 'package:hostel_booker/screens/home.dart';
// import 'package:hostel_booker/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      debugShowCheckedModeBanner: false,
      title: 'Hostel Booker',
      home: const SignUpPage(),
    );
  }
}
