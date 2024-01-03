import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Image.asset('assets/Frame 129.png'),
          SizedBox(
            width: 80,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Saturday, 1 July',
                    style: GoogleFonts.montserrat(
                        fontSize: 15, color: Colors.black),
                  ),
                  Text(
                    '12:30',
                    style: GoogleFonts.montserrat(
                        fontSize: 25, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Column(
              children: [
                Text(
                  'Dr. Kim Jones',
                  style: GoogleFonts.montserrat(
                      fontSize: 30, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: new CircularPercentIndicator(
                          radius: 50.0,
                          animation: true,
                          animationDuration: 1200,
                          lineWidth: 10.0,
                          percent: 0.4,
                          center: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Ongoing",
                                style: new TextStyle(color: Colors.grey),
                              ),
                              Text(
                                '4/10',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              )
                            ],
                          ),
                          circularStrokeCap: CircularStrokeCap.butt,
                          backgroundColor: Color(0xffE4E0F3),
                          progressColor: Color(0xff5351C7),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Appointment status',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          SmallContainer(
                              color: Color(0xffE4E0F3), text: 'Remaining'),
                          SizedBox(
                            height: 9,
                          ),
                          SmallContainer(
                              color: Color(0xff5351C7), text: 'Completed'),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(247, 247, 222, 4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Quick Menu',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: MyCard(
                              text1: 'Patient',
                              text2: 'Records',
                              desc: 'Maintain and manage Patient records.',
                              image: 'assets/Vector (2).png'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: MyCard(
                              text1: 'Start',
                              text2: 'Consultation',
                              desc: 'Maintain and manage Patient records.',
                              image: 'assets/Component 2.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: MyCard(
                              text1: 'Payment',
                              text2: 'Records',
                              desc: 'Maintain and manage Patient records.',
                              image: 'assets/Vector (1).png'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: MyCard(
                              text1: 'Manage',
                              text2: 'Staff',
                              desc: 'Maintain and manage Patient records.',
                              image: 'assets/Component 2.png'),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Color(0xff32856E),
        onPressed: () {},
        child: Icon(
          MdiIcons.accountMultiplePlus,
          color: Colors.white,
        ),
      ),
    );
  }
}

class SmallContainer extends StatelessWidget {
  final Color color;
  final String text;
  const SmallContainer({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(3)),
        ),
        SizedBox(
          width: 12,
        ),
        Text(text),
      ],
    );
  }
}

class MyCard extends StatelessWidget {
  final String text1;
  final String text2;
  final String desc;
  final String image;
  const MyCard(
      {super.key,
      required this.text1,
      required this.text2,
      required this.desc,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Color(0xff5351C7).withOpacity(1),
      color: Color(0xffF5F5F5),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text1,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500, fontSize: 17),
                    ),
                    Text(
                      text2,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500, fontSize: 17),
                    ),
                  ],
                ),
                Image.asset(image),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, bottom: 6),
            child: Text(
              desc,
              style: GoogleFonts.montserrat(color: Colors.grey, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0; // Index of the selected card, -1 means none selected

  void _selectCard(int index) {
    setState(() {
      if (_selectedIndex != 0 && index != _selectedIndex) {
        // Deselect the previously selected card
        _selectedIndex = -1;
      } else {
        // Select the tapped card (Home card)
        _selectedIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffF8F7FC),
        boxShadow: [
          BoxShadow(
            color: Color(0xff6CEBC6).withOpacity(0.5),
            blurRadius: 25,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () => setState(() {
              _selectedIndex = 0;
            }),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: _selectedIndex == 0
                    ? Color(0xff6CEBC6)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/Group.png'),
                  Text(
                    'Home',
                    style: GoogleFonts.montserrat(fontSize: 10),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => setState(() {
              _selectedIndex = 1;
            }),
            child: Container(
              height: 60,
              width: 84,
              decoration: BoxDecoration(
                color: _selectedIndex == 1
                    ? Color(0xff6CEBC6)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/Group (1).png'),
                  Text(
                    'Appointments',
                    style: GoogleFonts.montserrat(fontSize: 10),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => setState(() {
              _selectedIndex = 2;
            }),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: _selectedIndex == 2
                    ? Color(0xff6CEBC6)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/Vector (4).png'),
                  Text(
                    'Chat',
                    style: GoogleFonts.montserrat(fontSize: 10),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => setState(() {
              _selectedIndex = 3;
            }),
            child: Container(
              height: 60,
              width: 84,
              decoration: BoxDecoration(
                color: _selectedIndex == 3
                    ? Color(0xff6CEBC6)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/Vector (5).png'),
                  Text(
                    'Notifications',
                    style: GoogleFonts.montserrat(fontSize: 10),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
