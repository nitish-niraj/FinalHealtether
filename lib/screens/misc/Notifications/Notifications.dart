import 'package:finalhealtether/screens/Home/Screens/HomeScreen/home_screen.dart';
import 'package:finalhealtether/screens/misc/Notifications/Model/NotificationModel.dart';
import 'package:finalhealtether/screens/misc/Notifications/Widget/NotificationWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Home/Screens/AppointmentScreen/appointment_screen.dart';
import '../WhatsappChat/ChatList.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height/844;
    var wi = MediaQuery.of(context).size.width/389;
    var listNotification = [
      NotificationModel(title: 'Payments', text1: 'You have received payment from ',textBold: 'Krishna Murthy',text2: '₹250/- consultation fees.', time:'a moment ago', titleColor: '0xFF876C05',),
      NotificationModel(title: 'Payments', text1: 'You have received payment from ',textBold: 'Krishna Murthy',text2: '₹250/- consultation fees.', time:'a moment ago', titleColor: '0xFF876C05',),
      NotificationModel(title: 'Status', text1: 'You have changed the status of ',textBold: 'Malini',text2: ' as Guest.', time:'a moment ago', titleColor: '0xFFC31E0B',),
      NotificationModel(title: 'Appointments', text1: 'You have an appointment scheduled with',textBold: ' Prakash Singh ',text2: '₹250/- consultation fees.', time:' today at 15:30.', titleColor: '0xFF5351C7',),
      NotificationModel(title: 'Payments', text1: 'You have received payment from ',textBold: 'Krishna Murthy',text2: '₹250/- consultation fees.', time:'a moment ago', titleColor: '0xFF876C05',),
      NotificationModel(title: 'Status', text1: 'You have changed the status of ',textBold: 'Malini',text2: ' as Guest.', time:'a moment ago', titleColor: '0xFFC31E0B',),

    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: Container(
        height: he*740,
        width: wi*389,
        padding: EdgeInsets.all(16),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('112 notifications found ',style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: Color(0xFF8E8E8E)
            ),),
            Container(
              width: wi*389,
              height: he*600,
              child: ListView.builder(
                itemCount:  listNotification.length,
                itemBuilder: (context,index){
                  return NotificationWidget(context, listNotification[index]);
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 3; // Index of the selected card, -1 means none selected

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
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }));
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
                  Image.asset('assets/homeimages/Group.png'),
                  Text(
                    'Home',
                    style: GoogleFonts.montserrat(fontSize: 10),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                _selectedIndex = 1;
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return AddAppoint();
                }));
              });
            },
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
                  Image.asset('assets/homeimages/Group (1).png'),
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
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return ChatList();
              }));
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
                  Image.asset('assets/homeimages/Vector (4).png'),
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
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) {
                return Notifications();
              }));
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
                  Image.asset('assets/homeimages/Vector (5).png'),
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
