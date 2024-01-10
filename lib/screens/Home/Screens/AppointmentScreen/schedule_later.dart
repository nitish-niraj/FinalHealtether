import 'package:finalhealtether/screens/Home/Screens/AppointmentScreen/done_appointment.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScheduleLater extends StatefulWidget {
  const ScheduleLater({super.key});

  @override
  State<ScheduleLater> createState() => _ScheduleLaterState();
}

class _ScheduleLaterState extends State<ScheduleLater> {
  TextEditingController mobilenocontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  bool _isSelected = false;
  String? doctorText;
  bool colorChange = false;

  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Appointment',
          style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 8,
                    width: 52,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff5351C7),
                        width: 2,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  CircleAvatar(
                    radius: 4,
                    backgroundColor: Color(0xff5351C7),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Appointment Details',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () async {
                  final DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101),
                    builder: (BuildContext context, Widget? child) {
                      return Theme(
                        data: ThemeData.light().copyWith(
                          colorScheme: ColorScheme.light(
                            primary: Color(0xff32856E), // Your chosen color
                            onPrimary: Colors.white,
                          ),
                        ),
                        child: child!,
                      );
                    },
                  );
                  if (pickedDate != null && pickedDate != _selectedDate) {
                    setState(() {
                      _selectedDate = pickedDate;
                    });
                  }
                },
                child: Container(
                  height: 60,
                  color: Color(0xffF5F5F5),
                  width: 326,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 15, bottom: 10, left: 10, right: 30),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            _selectedDate != null
                                ? '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
                                : 'Select date',
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: _selectedDate != null
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () async {
                  final TimeOfDay? pickedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  if (pickedTime != null) {
                    setState(() {
                      _selectedTime = pickedTime;
                    });
                  }
                },
                child: Container(
                  height: 60,
                  color: Color(0xffF5F5F5),
                  width: 326,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      bottom: 10,
                      left: 10,
                      right: 30,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            _selectedTime != null
                                ? '${_selectedTime!.hour}:${_selectedTime!.minute}'
                                : 'Select time slot',
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: _selectedTime != null
                                  ? Colors.black
                                  : Colors.grey,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                color: Color(0xffF5F5F5),
                width: 326,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 12, bottom: 10, left: 10, right: 30),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      isDense: true,
                    ),
                    value: doctorText,
                    items: <String>[
                      'Attending doctor',
                      'Dr. Kim Jones',
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value == 'Attending doctor' ? null : value,
                        child: Text(
                          value,
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: value == 'Attending doctor'
                                ? Colors.grey
                                : Colors.black,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        doctorText = newValue;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'This field is optional.',
                style: GoogleFonts.montserrat(fontSize: 12, color: Colors.grey),
              ),
              SizedBox(
                height: 250,
              ),
              GestureDetector(
                onTap: () {
                  if (doctorText != null &&
                      _selectedDate != null &&
                      _selectedTime != null) {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => DoneAppoint()),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text('Please fill in all the details.')),
                    );
                  }
                },
                child: Center(
                  child: Container(
                    height: 62,
                    width: 262,
                    decoration: BoxDecoration(
                      color: doctorText != null &&
                              _selectedDate != null &&
                              _selectedTime != null
                          ? Color(0xff32856E)
                          : Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        'Schedule appointmnet',
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: doctorText != null &&
                                  _selectedDate != null &&
                                  _selectedTime != null
                              ? Colors.white
                              : Colors.grey,
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
