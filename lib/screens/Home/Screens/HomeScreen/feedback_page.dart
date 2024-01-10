import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum RadioButtonValue { first, second, third }

class FeedBackPage extends StatefulWidget {
  const FeedBackPage({super.key});

  @override
  State<FeedBackPage> createState() => _FeedBackPageState();
}

class _FeedBackPageState extends State<FeedBackPage> {
  RadioButtonValue? _selectedValue;
  int _iconColor = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Feedback',
          style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 2,
              ),
              Text(
                "We'd Love to Hear From You!",
                style: GoogleFonts.montserrat(
                    fontSize: 15,
                    color: Color(
                      0xff29286E,
                    ),
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'How satisfied are you with our app?',
                style: GoogleFonts.montserrat(
                    fontSize: 15, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Spacer(),
                  Text(
                    'Rate Us',
                    style: GoogleFonts.montserrat(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.star_rate,
                        color:
                            _iconColor >= 2 ? Colors.yellow : Color(0xffEEEEEE),
                        size: 55,
                      ),
                      onPressed: () {
                        setState(() {
                          _iconColor = (_iconColor == 2) ? 0 : 2;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.star_rate,
                        color:
                            _iconColor >= 3 ? Colors.yellow : Color(0xffEEEEEE),
                        size: 55,
                      ),
                      onPressed: () {
                        setState(() {
                          _iconColor = (_iconColor == 3) ? 0 : 3;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.star_rate,
                        color:
                            _iconColor >= 4 ? Colors.yellow : Color(0xffEEEEEE),
                        size: 55,
                      ),
                      onPressed: () {
                        setState(() {
                          _iconColor = (_iconColor == 4) ? 0 : 4;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.star_rate,
                        color:
                            _iconColor >= 5 ? Colors.yellow : Color(0xffEEEEEE),
                        size: 55,
                      ),
                      onPressed: () {
                        setState(() {
                          _iconColor = (_iconColor == 5) ? 0 : 5;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(
                        Icons.star_rate,
                        color:
                            _iconColor >= 6 ? Colors.yellow : Color(0xffEEEEEE),
                        size: 55,
                      ),
                      onPressed: () {
                        setState(() {
                          _iconColor = (_iconColor == 6) ? 0 : 6;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'What do you like most about the apps?',
                style: GoogleFonts.montserrat(
                    fontSize: 14, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 7,
              ),
              Container(
                color: Color(0xffEEEEEE),
                height: 130,
                width: 325,
                child: TextField(
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: 'I liked ...',
                    hintStyle: GoogleFonts.montserrat(
                        color: Colors.grey, fontWeight: FontWeight.w500),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'What areas do you think we can improve?',
                style: GoogleFonts.montserrat(
                    fontSize: 14, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 7,
              ),
              Container(
                color: Color(0xffEEEEEE),
                height: 130,
                width: 325,
                child: TextField(
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: 'Type your answer here.',
                    hintStyle: GoogleFonts.montserrat(
                        color: Colors.grey, fontWeight: FontWeight.w500),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Would you recommend our app to others?',
                style: GoogleFonts.montserrat(
                    fontSize: 14, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 8,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Radio<RadioButtonValue>(
                        fillColor: MaterialStateColor.resolveWith(
                            (Set<MaterialState> states) {
                          return Colors.grey;
                        }),
                        value: RadioButtonValue.first,
                        groupValue: _selectedValue,
                        onChanged: (RadioButtonValue? value) {
                          setState(() {
                            _selectedValue = value;
                          });
                        },
                      ),
                      Text(
                        'Yes, definitely!',
                        style: GoogleFonts.montserrat(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio<RadioButtonValue>(
                        fillColor: MaterialStateColor.resolveWith(
                            (Set<MaterialState> states) {
                          return Colors.grey;
                        }),
                        value: RadioButtonValue.second,
                        groupValue: _selectedValue,
                        onChanged: (RadioButtonValue? value) {
                          setState(() {
                            _selectedValue = value;
                          });
                        },
                      ),
                      Text(
                        'Maybe.',
                        style: GoogleFonts.montserrat(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio<RadioButtonValue>(
                        fillColor: MaterialStateColor.resolveWith(
                            (Set<MaterialState> states) {
                          return Colors.grey;
                        }),
                        value: RadioButtonValue.third,
                        groupValue: _selectedValue,
                        onChanged: (RadioButtonValue? value) {
                          setState(() {
                            _selectedValue = value;
                          });
                        },
                      ),
                      Text(
                        'Not at the moment.',
                        style: GoogleFonts.montserrat(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 7,
              ),
              GestureDetector(
                onTap: () {},
                child: Center(
                  child: Container(
                    height: 55,
                    width: 220,
                    decoration: BoxDecoration(
                      color: Color(0xff32856E),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        'Submit',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
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
