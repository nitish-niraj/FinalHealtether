import 'package:finalhealtether/screens/Records/Model/appointment_TimeLine.dart';
import 'package:finalhealtether/screens/Records/Widget/appointmenttimeLineDetail_Widget.dart';
import 'package:finalhealtether/themeUI/ui.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:ui';

import 'appointment.dart';

class AppointmentDetails extends StatefulWidget {
  @override
  State<AppointmentDetails> createState() => _AppointmentDetailsState();
}

class _AppointmentDetailsState extends State<AppointmentDetails> {
  var list = [
    apponitmentTimeLineModel(
        Date: '23 July, 2023',
        Title:
            'Appointment of 25 July, 2023 at 6:30pm in the evening has been cancelled.'),
    apponitmentTimeLineModel(
        Date: '23 July, 2023',
        Title:
            'Appointment of 25 July, 2023 at 6:30pm in the evening has been cancelled.'),
    apponitmentTimeLineModel(
        Date: '23 July, 2023',
        Title:
            'Appointment of 25 July, 2023 at 6:30pm in the evening has been cancelled.'),
    apponitmentTimeLineModel(
        Date: '23 July, 2023',
        Title:
            'Appointment of 25 July, 2023 at 6:30pm in the evening has been cancelled.'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Appointment Details',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [
            PopupMenuButton<String>(
              shadowColor: Color(0xFFC7E9E3),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              icon: Image.asset(
                "assets/popmenu.png",
                height: 20,
                width: 20,
              ),
              color: const Color.fromARGB(255, 255, 255, 255),
              itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                  onTap: () {
                    Future.delayed(Duration.zero).then((value) {
                      showAlert(context);
                    });
                  },
                  value: "1",
                  child: const Text(
                    'Schedule Follow-up ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                PopupMenuItem<String>(
                    onTap: () {
                      Future.delayed(Duration.zero).then((value) {
                        showAlert2(context);
                      });
                    },
                    value: "2",
                    child: const Text(
                      'Reschedule Appointment',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                PopupMenuItem<String>(
                  onTap: () {
                    Future.delayed(Duration.zero).then((value) {
                      showAlert3(context);
                    });
                  },
                  value: "3",
                  child: const Text(
                    'Cancel Appointment',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                 PopupMenuItem<String>(
                  value: "4",
                  child: Text(
                    'View Patient details',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ],
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
          margin: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 26, horizontal: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Attending Doctor',
                            style: TextStyle(
                              color: Color(0xFF8E8E8E),
                              fontWeight: FontWeight.normal,
                              fontSize: 17,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Slot - 2',
                            style: TextStyle(
                              color: Color(0xFF4646B5),
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr. Ajit Bhalla',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                            ),
                          ),
                          Spacer(),
                          Text(
                            '14:20-14:40',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Divider(
                        thickness: 2,
                        color: Color(0xFFE4E0F3),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Jane Doe',
                            style: TextStyle(
                              color: Color(0xFF4646B5),
                              fontWeight: FontWeight.bold,
                              fontSize: 31,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.info_outline_rounded,
                            color: Colors.black,
                            size: 18,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '+91 896 254654',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.call,
                                color: Colors.black,
                                size: 20,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text('Call',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 22))
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/mingcute-bill-line.png',
                                height: 18,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text('View bills',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 22))
                            ],
                          ),
                          Spacer(),
                          SizedBox(
                            width: 89,
                            height: 47,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/ion-logo-whatsapp-ozu.png',
                                    height: 18,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 4,),
                                  Text('Chat',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 19))
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                                  backgroundColor: AppColors.primary,
                                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12)
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Text(
                  'Timeline',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    height: 0,
                  ),
                ),
                SizedBox(
                  width: 47,
                  child: Divider(
                    thickness: 2,
                    height: 0,
                    color: AppColors.primary,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return appointTimeLineWidget(context, list[index]);
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }

  final TextEditingController _followUpDateController = TextEditingController();

  DateTime? _selectedDate;

  void _onDateSelected(DateTime date) {
    setState(() {
      _selectedDate = date;
      var selectDate = DateFormat.yMMMEd().format(_selectedDate!);
      _followUpDateController.text = selectDate.toString();
    });
  }

  void _onDonePressed() {
    // Get the selected values here and handle them as required
    String followUpDate = _followUpDateController.text;
    print("Selected follow-up date: $followUpDate");
    _onTimeSelected;
    // Close the dialog
    Navigator.pop(context);
  }

  int radio_yes = 1;

  bool ischecked_yes = false;

  TimeOfDay? _selectedTime;

  final TextEditingController _followUpTimeController = TextEditingController();

  void _onTimeSelected(TimeOfDay time) {
    setState(() {
      _selectedTime = time;
      _followUpTimeController.text = _selectedTime!.format(context);
    });
  }

  showAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          // var constraints;
          return Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, bottom: 8.0, right: 15, left: 15),
              child: SizedBox(
                  // padding: MediaQuery.of(context).viewInsets,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2 + 30,
                  child: ClipRRect(
                      // borderRadius: const BorderRadius.all(Radius.circular(20)),
                      child: Scaffold(
                    body: Container(
                      clipBehavior: Clip.antiAlias,
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
                      child: Stack(
                        children: [
                          const Positioned(
                            left: 27,
                            top: 25,
                            child: Text(
                              'Schedule Follow-up',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 27,
                            top: 62,
                            child: SizedBox(
                              height: 200,
                              width:
                                  MediaQuery.of(context).size.width / 2 + 100,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        width: 120,
                                        child: Text(
                                          'Follow-up date ',
                                          style: TextStyle(
                                            color: Color(0xFF1F1F1F),
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 30),
                                      SizedBox(
                                        width: 130,
                                        child: TextFormField(
                                          controller: _followUpDateController,
                                          readOnly: true,
                                          onTap: () async {
                                            // Show DatePicker when the field is tapped
                                            DateTime currentDate =
                                                DateTime.now();
                                            DateTime? selectedDate =
                                                await showDatePicker(
                                              context: context,
                                              initialDate: currentDate,
                                              firstDate: currentDate,
                                              lastDate: currentDate.add(
                                                const Duration(days: 365),
                                              ),
                                            );
                                            if (selectedDate != null) {
                                              _onDateSelected(selectedDate);
                                            }
                                          },
                                          decoration: InputDecoration(
                                            suffixIcon: Container(
                                              // frame340FVw (1:4583)
                                              width: 19,
                                              height: 15,
                                              child: Image.asset(
                                                'assets/images/downarrow.png',
                                                width: 19,
                                                height: 15,
                                              ),
                                            ),
                                            hintText: 'Select',
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  Container(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 10),
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFF7F0FC),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                          child: const Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'none',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 10),
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFF7F0FC),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                          child: const Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'After 3 days',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 10),
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFF7F0FC),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          ),
                                          child: const Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'After 7 days',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  Expanded(
                                    child: SizedBox(
                                      height: 74,
                                      // color: Colors.black,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 17.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              width: 120,
                                              child: Text(
                                                'Time',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF1F1F1F),
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            // const SizedBox(width: 10),
                                            SizedBox(
                                              width: 130,
                                              child: TextFormField(
                                                controller:
                                                    _followUpTimeController,
                                                readOnly: true,
                                                onTap: () async {
                                                  // Show TimePicker when the field is tapped
                                                  TimeOfDay currentTime =
                                                      TimeOfDay.now();
                                                  TimeOfDay? selectedTime =
                                                      await showTimePicker(
                                                    context: context,
                                                    initialTime: currentTime,
                                                  );
                                                  if (selectedTime != null) {
                                                    _onTimeSelected(
                                                        selectedTime);
                                                  }
                                                },
                                                decoration: InputDecoration(
                                                  suffixIcon: Container(
                                                    // frame340FVw (1:4583)
                                                    width: 19,
                                                    height: 15,
                                                    child: Image.asset(
                                                      'assets/images/downarrow.png',
                                                      width: 19,
                                                      height: 15,
                                                    ),
                                                  ),
                                                  hintText: 'Select',
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7),
                                                  ),
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
                            ),
                          ),
                          Positioned(
                            left: 27,
                            top: 333,
                            right: 27,
                            child: Container(
                              // width: 355,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // setState(() {
                                      //   visible_timeline = true;
                                      // });
                                      _onDonePressed();
                                    },
                                    child: Container(
                                      width: 130,
                                      height: 55,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 26, vertical: 16),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: AppColors.primary,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(9)),
                                      ),
                                      child: const InkWell(
                                        child: Text(
                                          'Done',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  InkWell(
                                    onTap: () {
                                      // setState(() {
                                      //   visible_timeline = false;
                                      // });
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Appointment(),
                                          ));
                                    },
                                    child: Container(
                                      width: 130,
                                      height: 55,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 26, vertical: 16),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(width: 0.50),
                                          borderRadius:
                                              BorderRadius.circular(9),
                                        ),
                                      ),
                                      child: const Text(
                                        'Exit',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF6A798A),
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 27,
                            top: 280,
                            child: SizedBox(
                              width: 295,
                              height: 47,
                              child: Stack(
                                children: [
                                  const Positioned(
                                    left: 28,
                                    top: 21,
                                    child: SizedBox(
                                      width: 267,
                                      child: Text(
                                        'This will automatically send a remainder to patient’s Whatsapp 20hrs ago to visit again.',
                                        style: TextStyle(
                                          color: Color(0xFF6B6B6B),
                                          fontSize: 9,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: SizedBox(
                                      width: 195,
                                      height: 20,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 20,
                                            height: 20,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  spreadRadius: 1,
                                                  blurRadius: 1,
                                                  color: Colors.grey,
                                                  offset: Offset(-1, -1),
                                                ),
                                                BoxShadow(
                                                  spreadRadius: 1,
                                                  blurRadius: 1,
                                                  color: Color.fromARGB(
                                                      92, 255, 255, 255),
                                                  offset: Offset(-2, 5),
                                                ),
                                              ],
                                            ),
                                            // child: Checkbox(
                                            // side: BorderSide(

                                            //   color:Colors.black,
                                            //   strokeAlign: BorderSide.strokeAlignInside),

                                            //   activeColor: primaryColor,
                                            //     value: ischecked_yes,
                                            //    // tristate: true,
                                            //     onChanged: (value) {
                                            //       setState(() {
                                            //      ischecked_yes  =
                                            //             value!;

                                            //       });
                                            //     }),
                                          ),
                                          const SizedBox(width: 8),
                                          const Text(
                                            'Notify patient on Whatsapp',
                                            style: TextStyle(
                                              color: Color(0xFF6B6B6B),
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
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
                            left: 27,
                            top: 54,
                            child: Container(
                              width: 59,
                              decoration: const ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFF03BF9C),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))),
            ),
          );
        });
  }

  showAlert2(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          // var constraints;
          return Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, bottom: 8.0, right: 15, left: 15),
              child: SizedBox(
                  // padding: MediaQuery.of(context).viewInsets,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3 + 130,
                  child: ClipRRect(
                      //  borderRadius: const BorderRadius.all(Radius.circular(20)),
                      child: Scaffold(
                    body: Container(
                      clipBehavior: Clip.antiAlias,
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
                      child: Stack(
                        children: [
                          const Positioned(
                            left: 27,
                            top: 25,
                            child: Text(
                              'ReSchedule ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 27,
                            top: 62,
                            child: SizedBox(
                              height: 200,
                              width:
                                  MediaQuery.of(context).size.width / 2 + 100,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        width: 120,
                                        //color: Colors.black,
                                        child: Text(
                                          'Set the date ',
                                          style: TextStyle(
                                            color: Color(0xFF1F1F1F),
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 30),
                                      SizedBox(
                                        width: 130,
                                        child: TextFormField(
                                          controller: _followUpDateController,
                                          readOnly: true,
                                          onTap: () async {
                                            // Show DatePicker when the field is tapped
                                            DateTime currentDate =
                                                DateTime.now();
                                            DateTime? selectedDate =
                                                await showDatePicker(
                                              context: context,
                                              initialDate: currentDate,
                                              firstDate: currentDate,
                                              lastDate: currentDate.add(
                                                const Duration(days: 365),
                                              ),
                                            );
                                            if (selectedDate != null) {
                                              _onDateSelected(selectedDate);
                                            }
                                          },
                                          decoration: InputDecoration(
                                            suffixIcon: Container(
                                              // frame340FVw (1:4583)
                                              width: 19,
                                              height: 15,
                                              child: Image.asset(
                                                'assets/images/downarrow.png',
                                                width: 19,
                                                height: 15,
                                              ),
                                            ),
                                            hintText: 'Select',
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 25),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        width: 120,
                                        //color: Colors.black,
                                        child: Text(
                                          'Time ',
                                          style: TextStyle(
                                            color: Color(0xFF1F1F1F),
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 30),
                                      SizedBox(
                                        width: 130,
                                        child: TextFormField(
                                          controller: _followUpTimeController,
                                          readOnly: true,
                                          onTap: () async {
                                            // Show TimePicker when the field is tapped
                                            TimeOfDay currentTime =
                                                TimeOfDay.now();
                                            TimeOfDay? selectedTime =
                                                await showTimePicker(
                                              context: context,
                                              initialTime: currentTime,
                                            );
                                            if (selectedTime != null) {
                                              _onTimeSelected(selectedTime);
                                            }
                                          },
                                          decoration: InputDecoration(
                                            suffixIcon: Container(
                                              // frame340FVw (1:4583)
                                              width: 19,
                                              height: 15,
                                              child: Image.asset(
                                                'assets/images/downarrow.png',
                                                width: 19,
                                                height: 15,
                                              ),
                                            ),
                                            hintText: 'Select',
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 300,
                            right: 20,
                            child: Container(
                              // width: 355,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // setState(() {
                                      //   visible_timeline = true;
                                      // });
                                      _onDonePressed();
                                    },
                                    child: Container(
                                      width: 130,
                                      height: 55,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 26, vertical: 16),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFF03BF9C),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(9)),
                                      ),
                                      child: const InkWell(
                                        child: Text(
                                          'Done',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  InkWell(
                                    onTap: () {
                                      // setState(() {
                                      //   visible_timeline = false;
                                      // });
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Appointment(),
                                          ));
                                    },
                                    child: Container(
                                      width: 130,
                                      height: 55,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 26, vertical: 16),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(width: 0.50),
                                          borderRadius:
                                              BorderRadius.circular(9),
                                        ),
                                      ),
                                      child: const Text(
                                        'Exit',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF6A798A),
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 27,
                            top: 230,
                            child: SizedBox(
                              width: 295,
                              height: 47,
                              child: Stack(
                                children: [
                                  const Positioned(
                                    left: 28,
                                    top: 21,
                                    child: SizedBox(
                                      width: 267,
                                      child: Text(
                                        'This will automatically send a remainder to patient’s Whatsapp 20hrs ago to visit again.',
                                        style: TextStyle(
                                          color: Color(0xFF6B6B6B),
                                          fontSize: 9,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: SizedBox(
                                      width: 195,
                                      height: 20,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 20,
                                            height: 20,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  spreadRadius: 1,
                                                  blurRadius: 1,
                                                  color: Colors.grey,
                                                  offset: Offset(-1, -1),
                                                ),
                                                BoxShadow(
                                                  spreadRadius: 1,
                                                  blurRadius: 1,
                                                  color: Color.fromARGB(
                                                      92, 255, 255, 255),
                                                  offset: Offset(-2, 5),
                                                ),
                                              ],
                                            ),
                                            // child: Checkbox(
                                            // side: BorderSide(

                                            //   color:Colors.black,
                                            //   strokeAlign: BorderSide.strokeAlignInside),

                                            //   activeColor: primaryColor,
                                            //     value: ischecked_yes,
                                            //    // tristate: true,
                                            //     onChanged: (value) {
                                            //       setState(() {
                                            //      ischecked_yes  =
                                            //             value!;

                                            //       });
                                            //     }),
                                          ),
                                          const SizedBox(width: 8),
                                          const Text(
                                            'Notify patient on Whatsapp',
                                            style: TextStyle(
                                              color: Color(0xFF6B6B6B),
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
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
                            left: 27,
                            top: 54,
                            child: Container(
                              width: 59,
                              decoration: const ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0xFF03BF9C),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))),
            ),
          );
        });
  }

  showAlert3(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          // var constraints;
          return Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, bottom: 8.0, right: 15, left: 15),
              child: SizedBox(
                  // padding: MediaQuery.of(context).viewInsets,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3,
                  child: ClipRRect(
                      // borderRadius: const BorderRadius.all(Radius.circular(20)),
                      child: Scaffold(
                    body: Container(
                      clipBehavior: Clip.antiAlias,
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
                      child: Stack(
                        children: [
                          const Positioned(
                            left: 27,
                            top: 25,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Do you want to Cancel the scheduled',
                                  maxLines: 2,
                                  overflow: TextOverflow.visible,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  'appointment?',
                                  maxLines: 2,
                                  overflow: TextOverflow.visible,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 20,
                            top: 100,
                            right: 20,
                            child: Container(
                              // width: 355,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      // setState(() {
                                      //   visible_timeline = true;
                                      // });
                                      _onDonePressed();
                                    },
                                    child: Container(
                                      width: 130,
                                      height: 55,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 16),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFF03BF9C),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(9)),
                                      ),
                                      child: const InkWell(
                                        child: Text(
                                          'No',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  InkWell(
                                    onTap: () {
                                      // setState(() {
                                      //   visible_timeline = false;
                                      // });
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Appointment(),
                                          ));
                                    },
                                    child: Container(
                                      width: 130,
                                      height: 55,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 16),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(width: 0.50),
                                          borderRadius:
                                              BorderRadius.circular(9),
                                        ),
                                      ),
                                      child: const Text(
                                        'Yes',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF6A798A),
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 27,
                            top: 180,
                            child: SizedBox(
                              width: 295,
                              height: 47,
                              child: Stack(
                                children: [
                                  const Positioned(
                                    left: 28,
                                    top: 21,
                                    right: 28,
                                    child: SizedBox(
                                      width: 267,
                                      child: Text(
                                        'This will automatically send a remainder to patient’s Whatsapp 20hrs ago to visit again.',
                                        style: TextStyle(
                                          color: Color(0xFF6B6B6B),
                                          fontSize: 9,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: SizedBox(
                                      width: 195,
                                      height: 20,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 20,
                                            height: 20,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  spreadRadius: 1,
                                                  blurRadius: 1,
                                                  color: Colors.grey,
                                                  offset: Offset(-1, -1),
                                                ),
                                                BoxShadow(
                                                  spreadRadius: 1,
                                                  blurRadius: 1,
                                                  color: Color.fromARGB(
                                                      92, 255, 255, 255),
                                                  offset: Offset(-2, 5),
                                                ),
                                              ],
                                            ),
                                            // child: Checkbox(
                                            // side: BorderSide(

                                            //   color:Colors.black,
                                            //   strokeAlign: BorderSide.strokeAlignInside),

                                            //   activeColor: primaryColor,
                                            //     value: ischecked_yes,
                                            //    // tristate: true,
                                            //     onChanged: (value) {
                                            //       setState(() {
                                            //      ischecked_yes  =
                                            //             value!;

                                            //       });
                                            //     }),
                                          ),
                                          const SizedBox(width: 8),
                                          const Text(
                                            'Notify patient on Whatsapp',
                                            style: TextStyle(
                                              color: Color(0xFF6B6B6B),
                                              fontSize: 12,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
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
                        ],
                      ),
                    ),
                  ))),
            ),
          );
        });
  }

  // showAlert4(BuildContext context) {
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         // var constraints;
  //         return Center(
  //           child: Padding(
  //             padding: const EdgeInsets.only(
  //                 top: 8.0, bottom: 8.0, right: 15, left: 15),
  //             child: SizedBox(
  //                 // padding: MediaQuery.of(context).viewInsets,
  //                 width: MediaQuery.of(context).size.width,
  //                 height: MediaQuery.of(context).size.height / 4,
  //                 child: ClipRRect(
  //                     borderRadius: const BorderRadius.all(Radius.circular(20)),
  //                     child: Scaffold(
  //                       body: Container(
  //                         clipBehavior: Clip.antiAlias,
  //                         decoration: ShapeDecoration(
  //                           color: Colors.white,
  //                           shape: RoundedRectangleBorder(
  //                               borderRadius: BorderRadius.circular(8)),
  //                           shadows: const [
  //                             BoxShadow(
  //                               color: Color(0xFFC7E9E3),
  //                               blurRadius: 22,
  //                               offset: Offset(0, -4),
  //                               spreadRadius: 0,
  //                             )
  //                           ],
  //                         ),
  //                         child: Stack(
  //                           children: [
  //                             Positioned(
  //                               left: 27,
  //                               top: 25,
  //                               child: Column(
  //                                 mainAxisSize: MainAxisSize.min,
  //                                 crossAxisAlignment: CrossAxisAlignment.start,
  //                                 children: [
  //                                   const Text(
  //                                     'Do you want to delete patient',
  //                                     maxLines: 2,
  //                                     overflow: TextOverflow.visible,
  //                                     style: TextStyle(
  //                                       color: Colors.black,
  //                                       fontSize: 17,
  //                                       fontFamily: 'Poppins',
  //                                       fontWeight: FontWeight.w500,
  //                                     ),
  //                                   ),
  //                                   const SizedBox(
  //                                     height: 15,
  //                                   ),
  //                                   Text(
  //                                     'The patient history will be deleted permanently?',
  //                                     maxLines: 2,
  //                                     overflow: TextOverflow.visible,
  //                                     style: TextStyle(
  //                                       color: Colors.grey,
  //                                       fontSize: 12,
  //                                       fontFamily: 'Poppins',
  //                                       fontWeight: FontWeight.w500,
  //                                     ),
  //                                   ),
  //                                 ],
  //                               ),
  //                             ),
  //                             Positioned(
  //                               left: 20,
  //                               top: 90,
  //                               right: 20,
  //                               child: Container(
  //                                 // width: 355,
  //                                 child: Row(
  //                                   mainAxisSize: MainAxisSize.min,
  //                                   mainAxisAlignment:
  //                                       MainAxisAlignment.spaceEvenly,
  //                                   crossAxisAlignment:
  //                                       CrossAxisAlignment.start,
  //                                   children: [
  //                                     InkWell(
  //                                       // onTap: () {
  //                                       //   setState(() {
  //                                       //     visible_timeline = true;
  //                                       //   });
  //                                       //   _onDonePressed();
  //                                       // },
  //                                       child: Container(
  //                                         width: 130,
  //                                         height: 55,
  //                                         padding: const EdgeInsets.symmetric(
  //                                             horizontal: 20, vertical: 16),
  //                                         clipBehavior: Clip.antiAlias,
  //                                         decoration: ShapeDecoration(
  //                                           color: const Color(0xFF03BF9C),
  //                                           shape: RoundedRectangleBorder(
  //                                               borderRadius:
  //                                                   BorderRadius.circular(9)),
  //                                         ),
  //                                         child: const InkWell(
  //                                           child: Text(
  //                                             'No',
  //                                             textAlign: TextAlign.center,
  //                                             style: TextStyle(
  //                                               color: Colors.white,
  //                                               fontSize: 16,
  //                                               fontFamily: 'Poppins',
  //                                               fontWeight: FontWeight.w700,
  //                                             ),
  //                                           ),
  //                                         ),
  //                                       ),
  //                                     ),
  //                                     const SizedBox(width: 16),
  //                                     InkWell(
  //                                       onTap: () {
  //                                         // setState(() {
  //                                         //   visible_timeline = false;
  //                                         // });
  //                                         Navigator.push(
  //                                             context,
  //                                             MaterialPageRoute(
  //                                               builder: (context) =>
  //                                                   Appointment(),
  //                                             ));
  //                                       },
  //                                       child: Container(
  //                                         width: 130,
  //                                         height: 55,
  //                                         padding: const EdgeInsets.symmetric(
  //                                             horizontal: 20, vertical: 16),
  //                                         clipBehavior: Clip.antiAlias,
  //                                         decoration: ShapeDecoration(
  //                                           shape: RoundedRectangleBorder(
  //                                             side:
  //                                                 const BorderSide(width: 0.50),
  //                                             borderRadius:
  //                                                 BorderRadius.circular(9),
  //                                           ),
  //                                         ),
  //                                         child: const Text(
  //                                           'Yes',
  //                                           textAlign: TextAlign.center,
  //                                           style: TextStyle(
  //                                             color: Color(0xFF6A798A),
  //                                             fontSize: 16,
  //                                             fontFamily: 'Poppins',
  //                                             fontWeight: FontWeight.w700,
  //                                           ),
  //                                         ),
  //                                       ),
  //                                     ),
  //                                   ],
  //                                 ),
  //                               ),
  //                             ),
  //                           ],
  //                         ),
  //                       ),
  //                     ))),
  //           ),
  //         );
  //       });
  // }
  //
  // showAlert5(BuildContext context) {
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         // var constraints;
  //         return Center(
  //           child: Padding(
  //             padding: const EdgeInsets.only(
  //                 top: 8.0, bottom: 8.0, right: 15, left: 15),
  //             child: SizedBox(
  //                 // padding: MediaQuery.of(context).viewInsets,
  //                 width: MediaQuery.of(context).size.width,
  //                 height: MediaQuery.of(context).size.height / 3,
  //                 child: ClipRRect(
  //                     // borderRadius: const BorderRadius.all(Radius.circular(20)),
  //                     child: Scaffold(
  //                   body: Padding(
  //                     padding: const EdgeInsets.only(
  //                         top: 8.0, bottom: 8.0, right: 15, left: 15),
  //                     child: Column(
  //                       crossAxisAlignment: CrossAxisAlignment.start,
  //                       children: [
  //                         Container(
  //                           // notifypatientsjeV (1:6198)
  //                           margin: EdgeInsets.fromLTRB(0, 0, 0, 3),
  //                           child: Text(
  //                             'Notify Patients',
  //                             style: TextStyle(
  //                               fontFamily: 'Poppins',
  //                               fontSize: 18,
  //                               fontWeight: FontWeight.w500,
  //                               color: Color(0xff000000),
  //                             ),
  //                           ),
  //                         ),
  //                         Container(
  //                           // line63S37 (1:6213)
  //                           margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
  //                           width: 59,
  //                           height: 2,
  //                           decoration: BoxDecoration(
  //                             color: Color(0xff03bf9c),
  //                           ),
  //                         ),
  //                         Container(
  //                           // frame5889TK (1:6199)
  //                           margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
  //                           width: 251,
  //                           child: Column(
  //                             crossAxisAlignment: CrossAxisAlignment.start,
  //                             children: [
  //                               Container(
  //                                 // theappointmentisdelayedbyUVb (1:6200)
  //                                 margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
  //                                 child: Text(
  //                                   'The appointment is delayed by ',
  //                                   style: TextStyle(
  //                                     fontFamily: 'Poppins',
  //                                     fontSize: 16,
  //                                     fontWeight: FontWeight.w500,
  //                                     letterSpacing: -0.16,
  //                                     color: Color(0xff1f1f1f),
  //                                   ),
  //                                 ),
  //                               ),
  //                               Container(
  //                                 // frame401a2q (1:6201)
  //                                 margin: EdgeInsets.fromLTRB(0, 0, 74, 0),
  //                                 padding:
  //                                     EdgeInsets.fromLTRB(9.5, 19, 9.5, 19),
  //                                 width: double.infinity,
  //                                 decoration: BoxDecoration(
  //                                   border:
  //                                       Border.all(color: Color(0xff2e2d32)),
  //                                   borderRadius: BorderRadius.circular(7),
  //                                 ),
  //                                 child: Row(
  //                                   crossAxisAlignment:
  //                                       CrossAxisAlignment.center,
  //                                   children: [
  //                                     Container(
  //                                       // minsFem (1:6202)
  //                                       margin:
  //                                           EdgeInsets.fromLTRB(0, 0, 81, 0),
  //                                       child: Text(
  //                                         '10 mins',
  //                                         style: TextStyle(
  //                                           fontFamily: 'Poppins',
  //                                           fontSize: 16,
  //                                           fontWeight: FontWeight.w400,
  //                                           letterSpacing: -0.16,
  //                                           color: Color(0xff4d4d4d),
  //                                         ),
  //                                       ),
  //                                     ),
  //                                     Container(
  //                                       // frame340aBF (1:6203)
  //                                       width: 19,
  //                                       height: 15,
  //                                       child: Image.asset(
  //                                         'assets/images/frame-340.png',
  //                                         width: 19,
  //                                         height: 15,
  //                                       ),
  //                                     ),
  //                                   ],
  //                                 ),
  //                               ),
  //                             ],
  //                           ),
  //                         ),
  //                         Container(
  //                           // frame20469b (1:6206)
  //                           width: double.infinity,
  //                           height: 55,
  //                           child: Row(
  //                             crossAxisAlignment: CrossAxisAlignment.center,
  //                             children: [
  //                               Container(
  //                                 // frame1292ow (1:6207)
  //                                 margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
  //                                 child: TextButton(
  //                                   onPressed: () {},
  //                                   style: TextButton.styleFrom(
  //                                     padding: EdgeInsets.zero,
  //                                   ),
  //                                   child: Container(
  //                                     padding: EdgeInsets.fromLTRB(
  //                                         31, 16.56, 32.56, 15),
  //                                     height: double.infinity,
  //                                     decoration: BoxDecoration(
  //                                       color: Color(0xff03bf9c),
  //                                       borderRadius: BorderRadius.circular(9),
  //                                     ),
  //                                     child: Row(
  //                                       crossAxisAlignment:
  //                                           CrossAxisAlignment.center,
  //                                       children: [
  //                                         Container(
  //                                           // sendonK2M (1:6208)
  //                                           margin: EdgeInsets.fromLTRB(
  //                                               0, 0.44, 3.56, 0),
  //                                           child: Text(
  //                                             'Send on ',
  //                                             style: TextStyle(
  //                                               fontFamily: 'Poppins',
  //                                               fontSize: 16,
  //                                               fontWeight: FontWeight.w700,
  //                                               letterSpacing: 0.16,
  //                                               color: Color(0xffffffff),
  //                                             ),
  //                                           ),
  //                                         ),
  //                                         Container(
  //                                           // ionlogowhatsappcGM (1:6209)
  //                                           margin: EdgeInsets.fromLTRB(
  //                                               0, 0, 0, 1.56),
  //                                           width: 21.88,
  //                                           height: 21.88,
  //                                           child: Image.asset(
  //                                             'assets/images/ion-logo-whatsapp.png',
  //                                             width: 21.88,
  //                                             height: 21.88,
  //                                           ),
  //                                         ),
  //                                       ],
  //                                     ),
  //                                   ),
  //                                 ),
  //                               ),
  //                               Container(
  //                                 // frame128WsX (1:6211)
  //                                 width: 160,
  //                                 height: double.infinity,
  //                                 decoration: BoxDecoration(
  //                                   border:
  //                                       Border.all(color: Color(0xff000000)),
  //                                   borderRadius: BorderRadius.circular(9),
  //                                 ),
  //                                 child: Center(
  //                                   child: Text(
  //                                     'Exit',
  //                                     style: TextStyle(
  //                                       fontFamily: 'Poppins',
  //                                       fontSize: 16,
  //                                       fontWeight: FontWeight.w700,
  //                                       letterSpacing: 0.16,
  //                                       color: Color(0xff6a798a),
  //                                     ),
  //                                   ),
  //                                 ),
  //                               ),
  //                             ],
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                 ))),
  //           ),
  //         );
  //       });
  // }
}
