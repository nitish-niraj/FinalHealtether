import 'package:finalhealtether/screens/Home/Screens/HomeScreen/home_screen.dart';
import 'package:finalhealtether/screens/Records/Model/payment_list.dart';
import 'package:finalhealtether/screens/Records/Widget/payment_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../misc/Notifications/Notifications.dart';
import '../../misc/WhatsappChat/ChatList.dart';
import '../Appointment Record/appointment.dart';

class paymentRecordList extends StatefulWidget {
  const paymentRecordList({super.key});

  @override
  State<paymentRecordList> createState() => _paymentRecordListState();
}

class _paymentRecordListState extends State<paymentRecordList> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height/844;
    var wi = MediaQuery.of(context).size.width/389;
    var listPayment =[
      PaymentListModel(name: 'Ramesh Patel', phoneNumber: '+91 869 523145', lastVisit: '15-07-23', completed: true),
      PaymentListModel(name: 'Ramesh Patel', phoneNumber: '+91 869 523145', lastVisit: '15-07-23', completed: true),
      PaymentListModel(name: 'Ramesh Patel', phoneNumber: '+91 869 523145', lastVisit: '15-07-23', completed: false),
      PaymentListModel(name: 'Ramesh Patel', phoneNumber: '+91 869 523145', lastVisit: '15-07-23', completed: true),
      PaymentListModel(name: 'Ramesh Patel', phoneNumber: '+91 869 523145', lastVisit: '15-07-23', completed: false),
      PaymentListModel(name: 'Ramesh Patel', phoneNumber: '+91 869 523145', lastVisit: '15-07-23', completed: true),
      PaymentListModel(name: 'Ramesh Patel', phoneNumber: '+91 869 523145', lastVisit: '15-07-23', completed: true),
      PaymentListModel(name: 'Ramesh Patel', phoneNumber: '+91 869 523145', lastVisit: '15-07-23', completed: false),
    ];
    TextEditingController  search = TextEditingController();
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
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          height: he*844,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height:41,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: TextFormField(
                    controller: search,
                    inputFormatters: [LengthLimitingTextInputFormatter(40)],
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search,size: 24*wi,),
                        hintText: 'Quick Search',
                        contentPadding: EdgeInsets.all(16*wi),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                            BorderSide(width: 1, color: Color(0xFF6A798A))
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                            BorderSide(width: 1, color: Color(0xFF6A798A)))),
                    keyboardType: TextInputType.name,
                    style: TextStyle(
                      fontSize: 14*wi,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF00E0C7),
                    ),
                    cursorColor: Color(0xFF6A798A)),

              ),
              SizedBox(height: 16*he,),
              Text('All 3 Payment records are listed',style: GoogleFonts.poppins(
                  fontSize: 12*wi,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF8E8E8E)
              ),),
              SizedBox(height: 16*he,),
              Container(
                width: wi*389,
                height: 530*he,
                child: ListView.builder(
                  itemCount: listPayment.length,
                  itemBuilder: (context,index){
                    return PaymentListWidget(context,listPayment[index]);
                  },
                ),
              )
            ],
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
