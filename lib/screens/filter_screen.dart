import 'package:flutter/material.dart';
// import 'package:hostel_booker/screens/home_screen.dart';
import 'package:hostel_booker/utils/widgets.dart';

import '../utils/styling.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  double sliderValue = 1000;
  TextEditingController locationController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    locationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.passiveWhite,
      appBar: AppBar(
        leading: IconButton(
          splashRadius: 20,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Styles.passiveWhite,
        centerTitle: true,
        title: Text('Set your filters', style: Styles.header1),
      ),
      body: SingleChildScrollView(
        child: Stack(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    textAlign: TextAlign.left,
                    'Categories',
                    style: Styles.header2,
                  ),
                ),
              ),
              const CustomRadioButton1(),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    textAlign: TextAlign.left,
                    'Ratings',
                    style: Styles.header2,
                  ),
                ),
              ),
              const CustomRadioButton2(),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        textAlign: TextAlign.left,
                        'Your Location',
                        style: Styles.header2,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 8, 20.0, 8),
                      child: TextFormField(
                        controller: locationController,
                        decoration: InputDecoration(
                          hintText: 'eg. Ayeduase, Kumasi',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        textAlign: TextAlign.left,
                        'Price Ranges',
                        style: Styles.header2,
                      ),
                    ),
                  ),
                  //Slide Goes here

                  SliderTheme(
                    data: const SliderThemeData(
                        showValueIndicator: ShowValueIndicator.always,
                        activeTrackColor: Colors.green),
                    child: Slider(
                      label: '${sliderValue.toInt()}',
                      min: 1000,
                      max: 99999,
                      thumbColor: Colors.green,
                      value: sliderValue,
                      onChanged: ((value) {
                        setState(() {
                          sliderValue = value;
                        });
                      }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        '\$ 1000 - ${sliderValue.toInt()}',
                        style: const TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(8, 8, 8, 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green[700],
                            minimumSize:
                                Size(MediaQuery.of(context).size.width, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        child: const Text('Apply Filters'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
