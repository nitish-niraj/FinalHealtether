import 'package:finalhealtether/screens/Home/Screens/AppointmentScreen/Widgets/piechart_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pie_chart/pie_chart.dart';

class PatientAnalysis extends StatefulWidget {
  const PatientAnalysis({super.key});

  @override
  State<PatientAnalysis> createState() => _PatientAnalysisState();
}

class _PatientAnalysisState extends State<PatientAnalysis> {
  String selectedDoctor = '';
  String selectedDate = 'Today';
  final List<String> items = ['Dr. Kim Jones'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Patient Analysis',
          style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 15, right: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffF5F5F5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(border: InputBorder.none),
                    items: items.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      selectedDoctor = newValue!;
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 48,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DateCards(
                    isSelected: selectedDate == 'Today',
                    onTap: () {
                      setState(() {
                        selectedDate = 'Today';
                      });
                    },
                    text: 'Today',
                  ),
                  DateCards(
                    isSelected: selectedDate == 'Yearly',
                    onTap: () {
                      setState(() {
                        selectedDate = 'Yearly';
                      });
                    },
                    text: 'Yearly',
                  ),
                  DateCards(
                    isSelected: selectedDate == 'Monthly',
                    onTap: () {
                      setState(() {
                        selectedDate = 'Monthly';
                      });
                    },
                    text: 'Monthly',
                  ),
                  DateCards(
                    isSelected: selectedDate == 'Weekly',
                    onTap: () {
                      setState(() {
                        selectedDate = 'Weekly';
                      });
                    },
                    text: 'Weekly',
                  ),
                  DateCards(
                    isSelected: selectedDate == 'Custom',
                    onTap: () {
                      setState(() {
                        selectedDate = 'Custom';
                      });
                    },
                    text: 'Custom',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 44,
            ),
            PieChartCard(
              degree: 60,
              text: 'Patients Ratio',
              dataMap: {'Repeated patients': 90, 'New patients': 10},
              colorList: [
                Color(0xffe4e0f3),
                Color(0xff5351c7),
              ],
            ),
            SizedBox(
              height: 28,
            ),
            PieChartCard(
              degree: -120,
              text: 'Gender Ratio',
              dataMap: {'Female': 32, 'Other': 10, 'Male': 58},
              colorList: [
                Color(0xffe4e0f3),
                Color(0xff5351c7),
                Color(0xffAEA4E2),
              ],
            ),
            SizedBox(
              height: 28,
            ),
            PieChartCard(
              degree: 120,
              text: 'Age group Analysis',
              dataMap: {'Less than 18': 40, 'More than 18': 60},
              colorList: [
                Color(0xffe4e0f3),
                Color(0xff5351c7),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DateCards extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const DateCards({
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
          width: 70,
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
