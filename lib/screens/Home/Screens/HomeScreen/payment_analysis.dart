import 'package:finalhealtether/screens/Home/Screens/Widgets/piechart_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/services.dart';
import 'package:dotted_border/dotted_border.dart';

class PaymentAnalysis extends StatefulWidget {
  const PaymentAnalysis({super.key});

  @override
  State<PaymentAnalysis> createState() => _PaymentAnalysisState();
}

class _PaymentAnalysisState extends State<PaymentAnalysis> {
  String containerText = 'kimjones@ybl';
  String selectedDoctor = '';
  String selectedDate = 'Today';
  final List<String> items = ['Dr. Kim Jones'];

  @override
  void _copyToClipboard() {
    Clipboard.setData(ClipboardData(text: containerText));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Copied!'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment Analysis',
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
              height: 28,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: 60,
                  color: Color(0xffF5F5F5),
                  width: 220,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 18, bottom: 10, left: 10, right: 30),
                    child: Text(
                      containerText,
                      style: GoogleFonts.montserrat(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _copyToClipboard();
                  },
                  child: Container(
                    height: 60,
                    width: 95,
                    decoration: BoxDecoration(
                      color: Color(0xff32856E),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Copy',
                          style: GoogleFonts.montserrat(color: Colors.white),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Icon(
                          Icons.copy_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 14,
            ),
            SizedBox(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.add,
                        color: Color(0xff5351c7),
                      ),
                      Text(
                        'Add another number',
                        style: GoogleFonts.montserrat(
                            color: Color(0xff5351c7),
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 142),
                    child: SizedBox(
                      height: 5,
                      width: 184,
                      child: Divider(
                        thickness: 2,
                        color: Color(0xff5351c7),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RevenueCard(
                  desc: 'Total revenue collected',
                  amnt: '5.2',
                  value: 'K',
                ),
                RevenueCard(
                  desc: 'Total money deposited in Bank',
                  amnt: '5',
                  value: 'K',
                ),
              ],
            ),
            PieChartCard(
              degree: -120,
              text: 'Mode of payments',
              dataMap: {'Cash': 10, 'Card': 32, 'UPI': 58},
              colorList: [
                Color(0xff5351c7),
                Color(0xffe4e0f3),
                Color(0xffAEA4E2)
              ],
            ),
            SizedBox(
              height: 28,
            ),
            PieChartCard(
              degree: 70,
              text: 'Payments Analysis',
              dataMap: {
                'Done': 90,
                'Pending': 10,
              },
              colorList: [
                Color(0xffe4e0f3),
                Color(0xff5351c7),
              ],
            ),
            SizedBox(
              height: 28,
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

class RevenueCard extends StatelessWidget {
  final String desc;
  final String amnt;
  final String value;

  const RevenueCard(
      {super.key, required this.desc, required this.amnt, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 3, bottom: 18, left: 6, right: 12),
      child: Container(
        height: 130,
        width: 150,
        decoration: BoxDecoration(
          color: Color(0xffe4e0f3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text(
                desc,
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600, fontSize: 12),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                verticalDirection: VerticalDirection.down,
                children: [
                  Icon(
                    Icons.currency_rupee,
                    size: 40,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    amnt,
                    style: TextStyle(fontSize: 40),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 14.0),
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
