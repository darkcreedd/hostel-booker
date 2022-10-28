import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hostel_booker/utils/styling.dart';

class WidgetsTesting extends StatelessWidget {
  const WidgetsTesting({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: TileHostelCard(),
      ),
    );
  }
}

class TileHostelCard extends StatelessWidget {
  const TileHostelCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 100,
              width: 110,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'images/bunkBed.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
                child: Container(
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hostel Name',
                      style: Styles.header2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.location_on,
                              color: Color.fromARGB(255, 35, 150, 39),
                            ),
                            Text('Location')
                          ],
                        ),
                        const Text('Price')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Distance'),
                        Row(
                          children: const [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15,
                            ),
                            Text('Reviews'),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class HostelCard extends StatelessWidget {
  const HostelCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        height: 230,
        width: 180,
        child: Column(
          children: [
            Expanded(
                child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'images/bunkBed.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: InkWell(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 18,
                        child: Center(
                            child: Icon(
                          Icons.favorite,
                          color: Colors.green,
                        )),
                      ),
                    ),
                  ),
                )
              ],
            )),
            Text(
              'Victory Hostel',
              style: Styles.header2,
            ),
            const StarRatings(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 30,
                    width: 90,
                    child: Row(children: const [
                      Icon(
                        Icons.location_on,
                        color: Colors.green,
                      ),
                      Text('Ayeduase')
                    ]),
                  ),
                  const Text(
                    '\$500.00',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class StarRatings extends StatelessWidget {
  const StarRatings({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
        minRating: 1,
        itemSize: 23,
        ignoreGestures: true,
        initialRating: 4.5,
        allowHalfRating: true,
        itemBuilder: ((context, index) => const Icon(
              Icons.star,
              color: Colors.amber,
            )),
        onRatingUpdate: ((value) {}));
  }
}

class CustomRadioButton1 extends StatefulWidget {
  const CustomRadioButton1({super.key});

  @override
  State<CustomRadioButton1> createState() => _CustomRadioButton1State();
}

class _CustomRadioButton1State extends State<CustomRadioButton1> {
  bool hostelIndex = false;
  bool homestelIndex = false;
  bool apartmentIndex = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                hostelIndex = true;
                homestelIndex = false;
                apartmentIndex = false;
              });
            },
            style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: hostelIndex ? Colors.green[700] : Colors.white,
                minimumSize: Size(MediaQuery.of(context).size.width * 0.05, 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            child: Text(
              'Hostel',
              style:
                  TextStyle(color: hostelIndex ? Colors.white : Colors.black),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                hostelIndex = false;
                homestelIndex = true;
                apartmentIndex = false;
              });
            },
            style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor:
                    homestelIndex ? Colors.green[700] : Colors.white,
                minimumSize: Size(MediaQuery.of(context).size.width * 0.05, 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            child: Text(
              'Homestel',
              style:
                  TextStyle(color: homestelIndex ? Colors.white : Colors.black),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                hostelIndex = false;
                homestelIndex = false;
                apartmentIndex = true;
              });
            },
            style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor:
                    apartmentIndex ? Colors.green[700] : Colors.white,
                minimumSize: Size(MediaQuery.of(context).size.width * 0.05, 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            child: Text(
              'Apartment',
              style: TextStyle(
                  color: apartmentIndex ? Colors.white : Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomRadioButton2 extends StatefulWidget {
  const CustomRadioButton2({super.key});

  @override
  State<CustomRadioButton2> createState() => _CustomRadioButton2State();
}

class _CustomRadioButton2State extends State<CustomRadioButton2> {
  bool unrated = false;
  bool twoStar = false;
  bool threeStar = false;
  bool fourStar = false;
  bool fiveStar = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    unrated = true;
                    twoStar = false;
                    threeStar = false;
                    fourStar = false;
                    fiveStar = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: unrated ? Colors.green[700] : Colors.white,
                    minimumSize:
                        Size(MediaQuery.of(context).size.width * 0.05, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: Text(
                  'Unrated',
                  style:
                      TextStyle(color: unrated ? Colors.white : Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    unrated = false;
                    twoStar = true;
                    threeStar = false;
                    fourStar = false;
                    fiveStar = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: twoStar ? Colors.green[700] : Colors.white,
                    minimumSize:
                        Size(MediaQuery.of(context).size.width * 0.05, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: Text(
                  '2 Star',
                  style:
                      TextStyle(color: twoStar ? Colors.white : Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    unrated = false;
                    twoStar = false;
                    threeStar = true;
                    fourStar = false;
                    fiveStar = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor:
                        threeStar ? Colors.green[700] : Colors.white,
                    minimumSize:
                        Size(MediaQuery.of(context).size.width * 0.05, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: Text(
                  '3 Star',
                  style:
                      TextStyle(color: threeStar ? Colors.white : Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    unrated = false;
                    twoStar = false;
                    threeStar = false;
                    fourStar = true;
                    fiveStar = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor:
                        fourStar ? Colors.green[700] : Colors.white,
                    minimumSize:
                        Size(MediaQuery.of(context).size.width * 0.05, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: Text(
                  '4 Star',
                  style:
                      TextStyle(color: fourStar ? Colors.white : Colors.black),
                ),
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  unrated = false;
                  twoStar = false;
                  threeStar = false;
                  fourStar = false;
                  fiveStar = true;
                });
              },
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: fiveStar ? Colors.green[700] : Colors.white,
                  minimumSize:
                      Size(MediaQuery.of(context).size.width * 0.05, 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: Text(
                '5 Star',
                style: TextStyle(color: fiveStar ? Colors.white : Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
