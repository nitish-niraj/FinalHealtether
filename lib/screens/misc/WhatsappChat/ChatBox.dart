import 'package:finalhealtether/ThemeUi/uitheme.dart';
import 'package:finalhealtether/screens/misc/WhatsappChat/Model/ChatBax.dart';
import 'package:finalhealtether/screens/misc/WhatsappChat/Widget/ChatBoxWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatBox extends StatelessWidget {
  const ChatBox({super.key});

  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height / 844;
    var wi = MediaQuery.of(context).size.width / 389;
    TextEditingController chatTextcotnr = TextEditingController();
    var listChatBox = [
      ChatBoxModel(
          text: 'Hello, I want to book an appointment',
          time: '12:11',
          send: true,
          check: true),
      ChatBoxModel(
          text: 'Hello, I want to book an appointment',
          time: '12:11',
          send: false,
          check: false),
      ChatBoxModel(
          text: 'Hello, I want to book an appointment',
          time: '12:11',
          send: true,
          check: true),
      ChatBoxModel(
          text:
              'Hello, I want to book an appointmentHello, I want to book an appointmentHello, I want to book an appointmentHello, I want to book an appointment',
          time: '12:11',
          send: false,
          check: false),
      ChatBoxModel(
          text:
              'Hello, I want to book an appointmentI want to book an appointmentHello, I wI want to book an appointmentHello, I wI want to book an appointmentHello, I w',
          time: '12:11',
          send: true,
          check: true),
      ChatBoxModel(
          text: 'Hello, I want to book an appointment',
          time: '12:11',
          send: true,
          check: true),
      ChatBoxModel(
          text: 'Hello, I want to book an appointment',
          time: '12:11',
          send: false,
          check: false),
      ChatBoxModel(
          text: 'Hello, I want to book an appointment',
          time: '12:11',
          send: true,
          check: true),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.asset(
                'assets/Ellipse1.png',
                height: 34 * he,
                width: 34 * wi,
              ),
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              'Ramesh Patel',
              style: GoogleFonts.arimo(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        backgroundColor: AppColors.primary,
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
        height: he * 844,
        width: wi * 384,
        color: Color(0xFFFDF3D1),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: wi * 384,
                height: he * 644,
                padding: EdgeInsets.only(left: 16 * wi, right: 16 * wi),
                child: ListView.builder(
                  itemCount: listChatBox.length,
                  itemBuilder: (context, index) {
                    return ChatBoxWidgat(context, listChatBox[index]);
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                      8.0), // Optional: Add border-radius for rounded corners
                ),
                child: Row(
                  children: [
                    Container(
                      color: Color(0xFFF5F5F5),
                      width: wi * 320,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: 'Write your message...',
                                  border: InputBorder.none, // No border
                                  hintStyle:
                                      TextStyle(color: Color(0xFF908D9E)),
                                ),
                              ),
                            ),
                            InkWell(
                                onTap: () {
                                  Future.delayed(Duration.zero).then((value) {
                                    showAlert(context);
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  color: AppColors.primary,
                                  size: 18,
                                )),
                            SizedBox(width: 12.0),
                            Icon(
                              Icons.mic,
                              color: AppColors.primary,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Icon(
                      Icons.send_rounded,
                      color: AppColors.primary,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

showAlert(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.only(
                top: 8.0, bottom: 8.0, right: 15, left: 15),
            child:  Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4 + 30,
              padding: EdgeInsets.all(26),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  shadows: const [
                    BoxShadow(
                      color: Color(0xFFC7E9E3),
                      blurRadius: 22,
                      offset: Offset(0, -4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Add files',
                              style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 47,
                              child: Divider(
                                height: 0,
                                thickness: 2,
                                color: AppColors.primary,
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Image.asset(
                            'assets/images/iconoir_cancel.png',
                            height: 28,
                            width: 28,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 17,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100,
                          height: 102,
                          padding: EdgeInsets.all(13),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: AppColors.primary),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/floatadd.png',
                                fit: BoxFit.contain,
                                height: 30,
                              ),
                              Text(
                                'Schedule Appointment',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 11,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 102,
                          padding: EdgeInsets.all(13),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: AppColors.primary),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/solar_notes-linear.png',
                                fit: BoxFit.contain,
                                height: 30,
                              ),
                              Text(
                                'Send Prescription',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 11,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 102,
                          padding: EdgeInsets.all(13),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: AppColors.primary),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/mingcute_bill-line.png',
                                fit: BoxFit.contain,
                                height: 30,
                              ),
                              Text(
                                'Send files',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 11,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
      });
}
