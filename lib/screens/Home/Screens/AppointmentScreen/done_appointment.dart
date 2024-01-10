import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexagon/hexagon.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DoneAppoint extends StatelessWidget {
  const DoneAppoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 130,
          ),
          Image.asset('assets/homeimages/charm_circle-tick.png'),
          SizedBox(
            height: 12,
          ),
          Text(
            'The appointment has been ',
            style: GoogleFonts.montserrat(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'scheduled successfully.',
            style: GoogleFonts.montserrat(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          HexagonWidget.pointy(
            color: Color(0xff5351C7),
            cornerRadius: 2,
            width: 102,
            child: HexagonWidget.pointy(
              color: Colors.white,
              width: 100,
              child: HexagonWidget.pointy(
                width: 85,
                color: Color(0xff5351C7),
                elevation: 5,
                child: Text(
                  '10',
                  style: GoogleFonts.montserrat(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 160,
            width: 290,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color(0xffF5F5F5),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'APPOINTMENT DETAILS',
                    style: GoogleFonts.montserrat(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Patient name: ',
                        style: GoogleFonts.montserrat(
                          color: Color(0xff32856E),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Ramesh Patel ',
                        style: GoogleFonts.montserrat(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Mode: ',
                            style: GoogleFonts.montserrat(
                              color: Color(0xff32856E),
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Physical',
                            style: GoogleFonts.montserrat(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 38,
                      ),
                      Row(
                        children: [
                          Text(
                            'Date: ',
                            style: GoogleFonts.montserrat(
                              color: Color(0xff32856E),
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '1 July, 2023',
                            style: GoogleFonts.montserrat(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Slot no. : ',
                            style: GoogleFonts.montserrat(
                              color: Color(0xff32856E),
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '2',
                            style: GoogleFonts.montserrat(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 68,
                      ),
                      Row(
                        children: [
                          Text(
                            'Time: ',
                            style: GoogleFonts.montserrat(
                              color: Color(0xff32856E),
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '14:20 - 14:40',
                            style: GoogleFonts.montserrat(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Appointment Booked on 1 July, 2023',
                    style: GoogleFonts.montserrat(
                      color: Colors.grey,
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 46,
          ),
          GestureDetector(
            onTap: () {},
            child: Center(
              child: Container(
                height: 58,
                width: 262,
                decoration: BoxDecoration(
                  color: Color(0xff32856E),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Send on',
                      style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      MdiIcons.whatsapp,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          GestureDetector(
            onTap: () {},
            child: Center(
              child: Container(
                height: 58,
                width: 262,
                decoration: BoxDecoration(
                  color: Color(0xffF5F5F5),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Text(
                    'Back to home',
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
