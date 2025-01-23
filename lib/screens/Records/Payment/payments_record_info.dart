import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../ThemeUi/uitheme.dart';
import '../../Home/Screens/HomeScreen/home_screen.dart';
import '../../misc/Notifications/Notifications.dart';
import '../../misc/WhatsappChat/ChatList.dart';
import '../Appointment Record/appointment.dart';

class PaymentsRecordInfo extends StatelessWidget {
  const PaymentsRecordInfo({super.key});

  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height/844;
    var wi = MediaQuery.of(context).size.width/389;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Payments Receipt',
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
        width: wi*389,
        height: he*844,
        padding: EdgeInsets.symmetric(vertical: 32,horizontal: 40),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Text('Ramesh Patel',style: GoogleFonts.poppins(
                fontSize: 23,
                fontWeight: FontWeight.w500,
                color: Color(0xFF4646B5),
              ),),
            SizedBox(height: 6,),
            Text('+91 8649 32154',style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Last visited :',style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF8E8E8E),
                ),),
                Text('15-07-23',style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF8E8E8E),
                ),),
              ],),
            SizedBox(height: 16,),
            SizedBox(
              width: wi*310,
              child: OutlinedButton(
                onPressed: (){},
                child: Text('Completed',style: GoogleFonts.montserrat(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF5BB104),
                ),),
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 19,vertical: 8),
                  side: BorderSide(color: Color(0xFF5BB104)),
                  backgroundColor: Color(0xFF5BB104).withOpacity(0.1),
                  shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.all(Radius.circular(8))
                  )
                ),
              ),
            ),
            SizedBox(height: 16,),
            SizedBox(
              width: 310*wi,
              child: Divider(
                height: 0,
                thickness: 2,
                color: Color(0xFFD2D2D2),
              ),
            ),
            SizedBox(height: 16,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100*wi,
                  child: Text('Total Fee',style: GoogleFonts.montserrat(
                    fontSize: 14,
                      fontWeight: FontWeight.w600,
                    color: Colors.black
                  ),),
                ),
                Text(':',style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                ),),
                SizedBox(
                  width: 130*wi,
                  child: Text('200.00',style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                  ),),
                ),
                Text('INR',style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                ),),
              ],
            ),
            SizedBox(height: 16,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100*wi,
                  child: Text('Amt. Received',style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                  ),),
                ),
                Text(':',style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                ),),
                SizedBox(
                  width: 130*wi,
                  child: Text('556.00',style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                  ),),
                ),
                Text('INR',style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                ),),
              ],
            ),
            SizedBox(height: 16,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100*wi,
                  child: Text('Balance Amt',style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                  ),),
                ),
                Text(':',style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                ),),
                SizedBox(
                  width: 130*wi,
                  child: Text('356.00',style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                  ),),
                ),
                Text('INR',style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                ),),
              ],
            ),
            SizedBox(height: 16,),
            SizedBox(
              width: 310*wi,
              child: Divider(
                height: 0,
                thickness: 2,
                color: Color(0xFFD2D2D2),
              ),
            ),
            SizedBox(height: 16,),
            Center(
              child: Container(
                width: wi*280,
                padding: EdgeInsets.symmetric(horizontal: wi*0.1),
                child: ElevatedButton(
                  onPressed: () {

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Send payment link',style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),),SizedBox(width: 6,),
                      Image.asset('assets/images/ion-logo-whatsapp-tXf.png',height: 18,color: Colors.white,)
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      alignment: Alignment.center,
                      padding:EdgeInsets.symmetric(vertical: 19,horizontal: wi*12)
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Center(
              child: Container(
                width: wi*280,
                // alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: wi*0.1),
                child: ElevatedButton(
                  onPressed: () {
                  },
                  child: Text('View Receipt',style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF8F7FC),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      alignment: Alignment.center,
                      padding:EdgeInsets.symmetric(vertical: 19,horizontal: wi*12)
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Center(
              child: Container(
                width: wi*280,
                // alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: wi*0.1),
                child: ElevatedButton(
                  onPressed: () {
                  },
                  child: Text('Pay by cash',style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF8F7FC),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      alignment: Alignment.center,
                      padding:EdgeInsets.symmetric(vertical: 19,horizontal: wi*12)
                  ),
                ),
              ),
            ),
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
                  return Appointment();
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

