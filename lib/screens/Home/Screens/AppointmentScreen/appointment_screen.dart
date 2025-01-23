import 'package:finalhealtether/screens/Home/Screens/AppointmentScreen/done_appointment.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddAppoint extends StatefulWidget {
  const AddAppoint({super.key});

  @override
  State<AddAppoint> createState() => _AddAppointState();
}

class _AddAppointState extends State<AddAppoint> {
  TextEditingController mobilenocontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  bool _isSelected = false;
  String? genderText;
  bool colorChange = false;
  bool _isRowVisible = true;

  DateTime? _selectedDate;
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height/844;
    var wi = MediaQuery.of(context).size.width/389;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Appointment',
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
                'Personal Details',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                color: Color(0xffF5F5F5),
                width: wi*389,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15, bottom: 10, left: 10, right: 30),
                  child: TextField(
                    controller: mobilenocontroller,
                    decoration: InputDecoration(
                      hintText: 'Mobile No.',
                      hintStyle: GoogleFonts.montserrat(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Visibility(
                visible:
                    _isRowVisible, // Toggles visibility based on this state variable
                child: Container(
                  width: wi*389,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text(
                          'The number is already present in the directory. Do you want to add new patient?',
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            color: Colors.grey[800],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isRowVisible = false;
                          });
                        },
                        child: Container(
                          width: 50,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff32856E),
                          ),
                          child: Center(
                            child: Text(
                              'Yes',
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isRowVisible = false;
                          });
                        },
                        child: Container(
                          width: 50,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffF5F5F5),
                          ),
                          child: Center(
                            child: Text(
                              'No',
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                color: Color(0xffF5F5F5),
                  width: wi*389,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15, bottom: 10, left: 10, right: 30),
                  child: TextField(
                    controller: namecontroller,
                    decoration: InputDecoration(
                      hintText: 'Name',
                      hintStyle: GoogleFonts.montserrat(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
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
                      width: 190*wi,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 15, bottom: 10, left: 10, right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                _selectedDate != null
                                    ? '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
                                    : 'Birthdate',
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
                    width: 12,
                  ),
                  Container(
                    height: 60,
                    color: Color(0xffF5F5F5),
                    width: 144*wi,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 15, bottom: 10, left: 10, right: 30),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Age',
                          hintStyle: GoogleFonts.montserrat(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                color: Color(0xffF5F5F5),
                width: wi*389,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15, bottom: 10, left: 10, right: 30),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      isDense: true,
                    ),
                    value: genderText,
                    items: <String>['Gender', 'Male', 'Female', 'Others']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value == 'Gender' ? null : value,
                        child: Text(
                          value,
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color:
                                value == 'Gender' ? Colors.grey : Colors.black,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        genderText = newValue;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isSelected = !_isSelected;
                      });
                    },
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color:
                            _isSelected ? Color(0xff5351C7) : Color(0xffF5F5F5),
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 0,
                            blurRadius: 1,
                            offset: Offset(-1, -3),
                          ),
                        ],
                      ),
                      child: _isSelected
                          ? Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 16,
                            )
                          : null,
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Virtual Consultation',
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 130,
              ),
              GestureDetector(
                onTap: () {
                  if (genderText != null &&
                      _selectedDate != null &&
                      mobilenocontroller.text.isNotEmpty &&
                      namecontroller.text.isNotEmpty) {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => DoneAppoint()),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Please fill in all the details')),
                    );
                  }
                },
                child: Center(
                  child: Container(
                    height: 62,
                 width: wi*389,
                    decoration: BoxDecoration(
                      color: genderText != null &&
                              _selectedDate != null &&
                              mobilenocontroller.text.isNotEmpty &&
                              namecontroller.text.isNotEmpty
                          ? Color(0xff32856E)
                          : Color(0xffF8F7FC),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        'Schedule Now',
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: genderText != null &&
                                  _selectedDate != null &&
                                  mobilenocontroller.text.isNotEmpty &&
                                  namecontroller.text.isNotEmpty
                              ? Colors.white
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  if (genderText != null &&
                      _selectedDate != null &&
                      mobilenocontroller.text.isNotEmpty &&
                      namecontroller.text.isNotEmpty) {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => DoneAppoint()),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Please fill in all the details')),
                    );
                  }
                },
                child: Center(
                  child: Container(
                    height: 62,
                    width: 262*wi,
                    decoration: BoxDecoration(
                      color: Color(0xffF8F7FC),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text(
                        'Schedule for later',
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: genderText != null &&
                                  _selectedDate != null &&
                                  mobilenocontroller.text.isNotEmpty &&
                                  namecontroller.text.isNotEmpty
                              ? Colors.black
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
