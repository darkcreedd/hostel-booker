import 'package:flutter/material.dart';
import 'package:hostel_booker/screens/booking_successful_screen.dart';
import 'package:hostel_booker/utils/styling.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          Container(
            color: const Color(0xf2f2f2f2),
            child: Column(
              children: [
                ListTile(
                  leading: IconButton(
                    splashRadius: 20,
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  trailing: IconButton(
                    splashRadius: 20,
                    icon:
                        const Icon(Icons.favorite_border, color: Colors.black),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0, 10, 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.35,
                      child: Image.asset(
                        'images/whiteRoom.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 11.0),
                      child: Text(
                        'Hostel Name',
                        style: Styles.header1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, left: 8.0, right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: const [
                            Icon(
                              Icons.location_on,
                              color: Colors.green,
                            ),
                            Text('Ayeduase')
                          ]),
                          Row(
                            children: const [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Text('4.2')
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                textAlign: TextAlign.left,
                overflow: TextOverflow.visible,
                softWrap: true,
                'This is an ultra-modern hostel with state of the arts equipment seeking to embrace students from all kinds of backgrounds and provides students with the peace needed for a peaceful stay in school.',
                style: TextStyle(fontSize: 15, wordSpacing: 3),
              )),
          InkWell(
            onTap: () {},
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'View on map',
                      style: Styles.header2,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: SizedBox(
                      height: 250,
                      child: Image.asset(
                        'images/map.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => const BookingSuccessful())));
        },
        style: ElevatedButton.styleFrom(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          minimumSize: const Size(350, 50),
          backgroundColor: const Color.fromARGB(255, 22, 127, 25),
        ),
        child: const Text('Add to Bookings'),
      ),
    );
  }
}
