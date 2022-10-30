import 'package:flutter/material.dart';
import 'package:hostel_booker/screens/home_screen.dart';
import 'package:hostel_booker/utils/styling.dart';

import 'booking_screen.dart';

class BookingSuccessful extends StatelessWidget {
  const BookingSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(242, 242, 242, 255),
      body: SafeArea(
        child: Stack(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              splashRadius: 20,
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const HomeScreen())));
              },
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/greentick.png'),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Added Successfully',
                  style: Styles.header1,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Go to',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const BookingScreen())));
                      },
                      child: const Text(
                        'Bookings',
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ))
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
