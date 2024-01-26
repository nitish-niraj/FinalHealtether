import 'package:finalhealtether/screens/misc/Notifications/Model/NotificationModel.dart';
import 'package:finalhealtether/screens/misc/Notifications/Widget/NotificationWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        height: he*844,
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
              height: he*650,
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
    );
  }
}
