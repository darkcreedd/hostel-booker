import 'package:flutter/material.dart';
import 'package:hostel_booker/screens/booking_screen.dart';
import 'package:hostel_booker/screens/filter_screen.dart';
import 'package:hostel_booker/utils/styling.dart';
import 'package:hostel_booker/utils/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> widgetOptions = const [
    HomeScreenWidget(),
    Text('favorite'),
    BookingScreen(),
    Text('Profile'),
  ];

  void pageUpdate(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.passiveWhite,
      body: widgetOptions[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: pageUpdate,
          elevation: 0,
          unselectedItemColor: const Color(0xFF526480),
          selectedItemColor: Colors.green,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: 'favorites'),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Bookings'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}

class HomeScreenWidget extends StatelessWidget {
  const HomeScreenWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      SizedBox(
        height: 170,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hi User',
                    style: Styles.header1,
                  ),
                  IconButton(
                      splashRadius: 20,
                      onPressed: () {},
                      icon: const Icon(Icons.notifications_none_outlined))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: 50,
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Search',
                            fillColor: Styles.passiveWhite,
                            suffixIcon: InkWell(
                                onTap: () {}, child: const Icon(Icons.search)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      )),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            fullscreenDialog: true,
                            builder: ((context) => const FilterScreen())));
                      },
                      icon: const Icon(Icons.filter_list))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Hostels',
                    style: Styles.header2,
                  ),
                  Text(
                    'View all',
                    style: Styles.feint,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 231),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          children: const [
            HostelCard(),
            HostelCard(),
            HostelCard(),
            HostelCard(),
          ],
        ),
      ),
      SizedBox(
        height: 50,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Recommended Hostels',
              style: Styles.header2,
            ),
            Text(
              'View all',
              style: Styles.feint,
            )
          ]),
        ),
      ),
      const TileHostelCard(),
      const TileHostelCard(),
      const TileHostelCard(),
      const TileHostelCard(),
    ]);
  }
}
