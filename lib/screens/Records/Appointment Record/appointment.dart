import 'package:finalhealtether/screens/Home/Screens/HomeScreen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../ThemeUi/uitheme.dart';
import '../../Home/Screens/AppointmentScreen/appointment_screen.dart';
import '../../misc/Notifications/Notifications.dart';
import '../../misc/WhatsappChat/ChatList.dart';
import 'appointment_details.dart';

class Appointment extends StatefulWidget {
   Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height/844;
    var wi = MediaQuery.of(context).size.width/389;
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      floatingActionButton: Container(
          width: 72*wi,
          margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: AppColors.primary,
              shape: BoxShape.circle
          ),
          child: InkWell(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>AddAppoint ()));
             },
            child: ClipOval(
                child: Image.asset(
                  'assets/images/floatadd.png',
                  fit: BoxFit.contain,height: 30*he,
                )),
          )),
        appBar: AppBar(
          title: const Text(
            'Appointments',
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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 15.0, left: 28, right: 28),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0, bottom: 12),
                    child: Container(
                      width: 335,
                      height: 59,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 0.50, color: Color(0xFF2E2D32)),
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                      child: TextFormField(
                        controller: null,
                        decoration: InputDecoration(
                           prefixIcon: Icon(Icons.search),
                            labelText: "Quick Search",
                            border: InputBorder.none),
                        style: TextStyle(
                          color: Color(0xFF6A798A),
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 42,
                            height: 42,
                            padding: const EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              color: AppColors.primary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              'All',
                              style: TextStyle(
                                color: Color(0xFFF6F6F6),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: 68,
                            height: 42,
                            padding: const EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF4F4F4),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              'Super admin',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: 96,
                            height: 42,
                            padding: const EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF3F3F3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              'Admins ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: 93,
                            height: 42,
                            padding: const EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF3F3F3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              'Guests',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 13, top: 13),
                        child: Text(
                          'All 12 appointments are listed',
                          style: TextStyle(
                            color: Color(0xFF979797),
                            fontSize: 11,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2 + 180,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 13,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Container(
                              //width: MediaQuery.of(context).size.width - 16,
                              width: 337,
                              height: 85,
                              padding: const EdgeInsets.only(
                                  top: 7, left: 9, right: 11, bottom: 7),
                              decoration: ShapeDecoration(
                                color: Color(0xfff7f0fc),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                AppointmentDetails()),
                                      );
                                    },
                                    child: Expanded(
                                      child: SizedBox(
                                        width: 300,
                                        height: 71,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 6,
                                              child: SizedBox(
                                                width: 231,
                                                height: 65,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      child: const Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            'Ramesh Patel',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                          SizedBox(height: 3),
                                                          Text(
                                                            'Dr. Ajit Bhalla',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    const SizedBox(height: 6),
                                                    Expanded(
                                                      child: Container(
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            const Text(
                                                              'Last appointment : 24/8/22',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF5C5C5C),
                                                                fontSize: 10,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                                width: 24),
                                                            Container(
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 9,
                                                                    height: 9,
                                                                    decoration:
                                                                        const ShapeDecoration(
                                                                      color: Color(
                                                                          0xFFFD3939),
                                                                      shape:
                                                                          OvalBorder(),
                                                                    ),
                                                                  ),
                                                                  const SizedBox(
                                                                      width: 6),
                                                                  const Text(
                                                                    'Virtual',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          12,
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 210,
                                              top: 71,
                                              child: Transform(
                                                transform: Matrix4.identity()
                                                  ..translate(0.0, 0.0)
                                                  ..rotateZ(-1.57),
                                                child: Container(
                                                  width: 68,
                                                  decoration:
                                                      const ShapeDecoration(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      side: BorderSide(
                                                        width: 0.50,
                                                        strokeAlign: BorderSide
                                                            .strokeAlignCenter,
                                                        color:
                                                            Color(0xFFBCBCBC),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 216,
                                              top: 0,
                                              child: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    3 * fem),
                                                // width: 57,
                                                height: 68,
                                                // color: Colors.black,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                      child: const Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Text(
                                                            '14:20',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 22,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                          Text(
                                                            'Slot - 2 ',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 10,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    const SizedBox(height: 9),
                                                    const Expanded(
                                                      child: Text(
                                                        '1 July',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 10,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ));
                      },
                    ),
                  )
                ],
              ),
            ),
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
  int _selectedIndex = 1; // Index of the selected card, -1 means none selected

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
