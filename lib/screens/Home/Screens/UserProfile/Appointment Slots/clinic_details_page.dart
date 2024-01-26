import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClinicDetails extends StatefulWidget {
  const ClinicDetails({super.key});

  @override
  State<ClinicDetails> createState() => _ClinicDetailsState();
}

class _ClinicDetailsState extends State<ClinicDetails> {
  int startSelectedHours = 0;
  int startSelectedMinutes = 0;
  int endSelectedHours = 0;
  int endSelectedMinutes = 0;
  String startselectedPeriod = 'am'; // Initial value
  String endselectedPeriod = 'am'; // Initial value

  // List to store selected appointment slots
  List<Map<String, String>> slotTimes = [];
  String startFormattedTime = '';
  String endFormattedTime = '';

  void _showTimePickerPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "ADD NEW SLOT",
            style: GoogleFonts.montserrat(
                fontSize: 15, fontWeight: FontWeight.w600),
          ),
          content: SizedBox(
            width: 600,
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    right: 178.0,
                  ),
                  child: SizedBox(
                    height: 1,
                    width: 54,
                    child: Divider(
                      thickness: 2,
                      color: Color(0xff52CFAC),
                    ),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Start time",
                  style: GoogleFonts.montserrat(
                      fontSize: 15, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  // Align items with space between them
                  children: [
                    // Fields for hours and minutes
                    Expanded(
                      child: Row(
                        children: [
                          SizedBox(width: 10), // Add spacing before hours field
                          Expanded(
                            child: Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey[300],
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: 7.0),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  onChanged: (value) {
                                    setState(() {
                                      startSelectedHours = int.parse(value);
                                    });
                                  },
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'hrs',
                                    hintStyle: GoogleFonts.montserrat(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            ':',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ), // Add spacing between hours and minutes fields
                          Expanded(
                            child: Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey[300],
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: 7.0),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  onChanged: (value) {
                                    setState(() {
                                      startSelectedMinutes = int.parse(value);
                                    });
                                  },
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'mins',
                                    hintStyle: GoogleFonts.montserrat(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),

                    // Buttons for AM and PM
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.end, // Align buttons to the end
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              startselectedPeriod = 'am';
                            });
                          },
                          child: Container(
                            height: 32,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Color(0xff32856E),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'am',
                                style: GoogleFonts.montserrat(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8), // Add spacing between buttons
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              startselectedPeriod = 'pm';
                            });
                          },
                          child: Container(
                            height: 32,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'pm',
                                style: GoogleFonts.montserrat(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "End time",
                  style: GoogleFonts.montserrat(
                      fontSize: 15, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  // Align items with space between them
                  children: [
                    // Fields for hours and minutes
                    Expanded(
                      child: Row(
                        children: [
                          SizedBox(width: 10), // Add spacing before hours field
                          Expanded(
                            child: Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey[300],
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: 7.0),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  onChanged: (value) {
                                    setState(() {
                                      endSelectedHours = int.parse(value);
                                    });
                                  },
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'hrs',
                                    hintStyle: GoogleFonts.montserrat(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            ':',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ), // Add spacing between hours and minutes fields
                          Expanded(
                            child: Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey[300],
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: 7.0),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  onChanged: (value) {
                                    setState(() {
                                      endSelectedMinutes = int.parse(value);
                                    });
                                  },
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'mins',
                                    hintStyle: GoogleFonts.montserrat(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),

                    // Buttons for AM and PM
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.end, // Align buttons to the end
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              endselectedPeriod = 'am';
                            });
                          },
                          child: Container(
                            height: 32,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Color(0xff32856E),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'am',
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 8), // Add spacing between buttons
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              endselectedPeriod = 'pm';
                            });
                          },
                          child: Container(
                            height: 32,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'pm',
                                style: GoogleFonts.montserrat(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    startFormattedTime =
                        '$startSelectedHours:${startSelectedMinutes.toString().padLeft(2, '0')} $startselectedPeriod';
                    endFormattedTime =
                        '$endSelectedHours:${endSelectedMinutes.toString().padLeft(2, '0')} $endselectedPeriod';

                    // Add the new start and end times to the slotTimes list
                    slotTimes.add({
                      'start': startFormattedTime,
                      'end': endFormattedTime,
                    });

                    // Print the slotTimes list (replace with your logic)
                    print("Slot Times: $slotTimes");
                    Navigator.of(context).pop();
                  },
                  child: Center(
                    child: Container(
                      height: 45,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color(0xff32856E),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Center(
                        child: Text(
                          'Save',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Center(
                    child: Container(
                      height: 45,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Center(
                        child: Text(
                          'Exit',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    ).then((value) {
      setState(() {
        startFormattedTime =
            '${startSelectedHours}:${startSelectedMinutes.toString().padLeft(2, '0')} $startselectedPeriod';
        endFormattedTime =
            '${endSelectedHours}:${endSelectedMinutes.toString().padLeft(2, '0')} $endselectedPeriod';

        slotTimes.add({'start': startFormattedTime, 'end': endFormattedTime});
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  'PATIENT ID',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: 38.0,
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
              height: 10,
            ),
            Text(
              'Set default text to patient id prefix and suffix',
              style: GoogleFonts.montserrat(
                color: Colors.grey,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Container(
                  height: 58,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Color(0xffEEEEEE),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 15, bottom: 10, left: 14, right: 30),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Prefix',
                        hintStyle: GoogleFonts.montserrat(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  '-',
                  style: TextStyle(
                    fontSize: 34,
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Container(
                  height: 58,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Color(0xffEEEEEE),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 15, bottom: 10, left: 14, right: 30),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Suffix',
                        hintStyle: GoogleFonts.montserrat(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Text(
                  'APPOINTMENT SLOTS',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: 122.0,
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
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: slotTimes.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 58,
                        width: 320,
                        decoration: BoxDecoration(
                          color: Color(0xffEEEEEE),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 15, bottom: 10, left: 14, right: 10),
                              child: Text(
                                'Slot ${index + 1}',
                                style: GoogleFonts.montserrat(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '${slotTimes[index]['start']} to ${slotTimes[index]['end']}',
                                style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  // Remove the selected slot on delete icon tap
                                  slotTimes.removeAt(index);
                                });
                              },
                              child: Icon(Icons.delete),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          _showTimePickerPopup(context);
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 26.0, left: 40, right: 40),
          child: BottomAppBar(
            height: 55,
            color: Color(0xff32856E),
            child: Center(
              child: Text(
                'Add new Slot',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
