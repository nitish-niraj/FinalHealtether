import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PaymentSettings extends StatefulWidget {
  PaymentSettings({super.key});

  @override
  State<PaymentSettings> createState() => _PaymentSettingsState();
}

class _PaymentSettingsState extends State<PaymentSettings> {
  String selectedOptions = 'Phone Pe';

  bool isStarVisible = true;

  TextEditingController text1 = TextEditingController();

  TextEditingController text2 = TextEditingController();

  TextEditingController text3 = TextEditingController();

  TextEditingController text4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),
        ),
        actions: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(6),
            ),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.close_rounded,
              ),
            ),
          ),
          SizedBox(
            width: 14,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    'PAYMENTS SETTINGS',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 112.0,
                    ),
                    child: SizedBox(
                      height: 5,
                      width: 54,
                      child: Divider(
                        thickness: 2,
                        color: Color(0xff52CFAC),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 48,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    PayOptionsCards(
                      text: 'Phone Pe',
                      isSelected: selectedOptions == 'Phone Pe',
                      onTap: () {
                        setState(() {
                          selectedOptions = 'Phone Pe';
                        });
                      },
                    ),
                    PayOptionsCards(
                      text: 'Others',
                      isSelected: selectedOptions == 'Others',
                      onTap: () {
                        setState(() {
                          selectedOptions = 'Others';
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: 320,
                decoration: BoxDecoration(
                  color: Color(0xffEEEEEE),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              setState(() {
                                isStarVisible = false;
                              });
                            } else {
                              setState(() {
                                isStarVisible = true;
                              });
                            }
                          },
                          controller: text1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Merchant ID',
                            hintStyle: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 200),
                        child: Visibility(
                          visible: isStarVisible,
                          child: Text(
                            '*',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 60,
                width: 320,
                decoration: BoxDecoration(
                  color: Color(0xffEEEEEE),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              setState(() {
                                isStarVisible = false;
                              });
                            } else {
                              setState(() {
                                isStarVisible = true;
                              });
                            }
                          },
                          controller: text2,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Salt Key',
                            hintStyle: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 200),
                        child: Visibility(
                          visible: isStarVisible,
                          child: Text(
                            '*',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 60,
                width: 320,
                decoration: BoxDecoration(
                  color: Color(0xffEEEEEE),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              setState(() {
                                isStarVisible = false;
                              });
                            } else {
                              setState(() {
                                isStarVisible = true;
                              });
                            }
                          },
                          controller: text3,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Salt Index',
                            hintStyle: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 200),
                        child: Visibility(
                          visible: isStarVisible,
                          child: Text(
                            '*',
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 230,
              ),
              GestureDetector(
                onTap: () {
                  if (text1.text.isEmpty &&
                      text2.text.isEmpty &&
                      text3.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Please fill in all the details')),
                    );
                  }
                },
                child: Center(
                  child: Container(
                    height: 55,
                    width: 220,
                    decoration: BoxDecoration(
                      color: text1.text.isEmpty &&
                              text2.text.isEmpty &&
                              text3.text.isEmpty
                          ? Color(0xffF8F7FC)
                          : Color(0xff32856E),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        'Save',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          color: text1.text.isEmpty &&
                                  text2.text.isEmpty &&
                                  text3.text.isEmpty
                              ? Colors.grey
                              : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PayOptionsCards extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const PayOptionsCards({
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: 20,
          width: 88,
          decoration: BoxDecoration(
            color: isSelected ? Color(0xff6CEBC6) : Color(0xffF5F5F5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                color: Colors.black,
                fontFamily: GoogleFonts.montserrat().fontFamily,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
