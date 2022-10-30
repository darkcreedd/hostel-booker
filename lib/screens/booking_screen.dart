import 'package:flutter/material.dart';

import 'package:hostel_booker/utils/styling.dart';
import 'package:hostel_booker/utils/widgets.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xf2f2f2f2),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xf2f2f2f2),
        title: const Text(
          'Bookings',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 200,
                child: Stack(fit: StackFit.expand, children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.6),
                                  BlendMode.dstATop),
                              image: const AssetImage('images/whiteRoom.jpg'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Positioned(
                    left: 2,
                    bottom: 0,
                    child: Column(
                      children: [
                        Text(
                          'Hostel Name',
                          style: Styles.header1,
                        ),
                        const StarRatings(),
                        Text(
                          '\$5000.00',
                          style: Styles.header2,
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 50,
                        width: 100,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            backgroundColor:
                                const Color.fromARGB(255, 69, 145, 71),
                          ),
                          child: const Text('Continue'),
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            );
          },
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 1),
    ));
  }
}
