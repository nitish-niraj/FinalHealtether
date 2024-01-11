import 'package:flutter/material.dart';

import '../../../ThemeUi/uitheme.dart';

class Payments1 extends StatefulWidget {
  const Payments1({super.key});

  @override
  State<Payments1> createState() => _Payments1State();
}

class _Payments1State extends State<Payments1> {
  @override
  Widget build(BuildContext context) {
    var wi = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Member',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
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
        padding: EdgeInsets.all(16),
        width: wi,
        height: he,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        'Invoice :',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text('263',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black))
                    ],
                  ),
                  Spacer(),
                  Text(
                    '4 July, 2023',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Text(
                    'Patient :',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Ramesh Patel',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: AppColors.secondary))
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Divider(
                thickness: 1,
                height: 0,
                color: AppColors.secondary,
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                decoration: BoxDecoration(color: Color(0xFFF8F7FC)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: wi * 0.34,
                      child: Text(
                        'Treatments',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: wi * 0.2,
                      child: Text('Qty',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                    ),
                    SizedBox(
                      width: wi * 0.2,
                      child: Text('Tax Amt.',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                    ),
                    Spacer(),
                    Text(
                      'Amt.',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: wi * 0.34,
                    child: Text(
                      'Consultaion',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  SizedBox(
                    width: wi * 0.2,
                    child: Text('1',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center),
                  ),
                  SizedBox(
                    width: wi * 0.2,
                    child: Text('50.00',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center),
                  ),
                  Spacer(),
                  Text(
                    '500.00',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: wi * 0.34,
                    child: Text(
                      'IV drip',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  SizedBox(
                    width: wi * 0.2,
                    child: Text('1',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center),
                  ),
                  SizedBox(
                    width: wi * 0.2,
                    child: Text('18.00',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center),
                  ),
                  Spacer(),
                  Text(
                    '50.00',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Divider(
                thickness: 1,
                height: 0,
                color: AppColors.secondary,
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: wi * 0.34,
                    child: Text(
                      'Total Amt.',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: wi * 0.2,
                    child: Text('-',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center),
                  ),
                  SizedBox(
                    width: wi * 0.2,
                    child: Text('550.00',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center),
                  ),
                  Spacer(),
                  Text(
                    'INR',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: wi * 0.34,
                    child: Text(
                      'Total Tax',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: wi * 0.2,
                    child: Text('-',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center),
                  ),
                  SizedBox(
                    width: wi * 0.2,
                    child: Text('68.00',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center),
                  ),
                  Spacer(),
                  Text(
                    'INR',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: wi * 0.34,
                    child: Text(
                      'Total Cost',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: wi * 0.2,
                    child: Text('-',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center),
                  ),
                  SizedBox(
                    width: wi * 0.2,
                    child: Text('618.00',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center),
                  ),
                  Spacer(),
                  Text(
                    'INR',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: wi * 0.4,
                    child: Text(
                      'Discount @10%',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: wi * 0.1,
                    child: Text('-',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center),
                  ),
                  SizedBox(
                    width: wi * 0.2,
                    child: Text('61.80',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center),
                  ),
                  Spacer(),
                  Text(
                    'INR',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Divider(
                thickness: 1,
                height: 0,
                color: AppColors.secondary,
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: wi * 0.34,
                    child: Text(
                      'Grand Total ',
                      style: TextStyle(
                          fontSize: 20,
                          color: AppColors.secondary,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: wi * 0.2,
                    child: Text('-',
                        style: TextStyle(
                            fontSize: 22,
                            color: AppColors.secondary,
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.center),
                  ),
                  SizedBox(
                    width: wi * 0.2,
                    child: Text('556.20',
                        style: TextStyle(
                            fontSize: 22,
                            color: AppColors.secondary,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                  ),
                  Spacer(),
                  Text(
                    'INR',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              SizedBox(height: 80,),
              Container(
                width: wi,
                // alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: wi*0.1),
                child: ElevatedButton(
                    onPressed: () {
                      Future.delayed(Duration.zero).then((value) {
                        showAlert(context);
                      });
                    },
                    child: Row(
                      children: [
                        Text('Send payment link',style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),),SizedBox(width: 6,),
                        Image.asset('assets/images/ion-logo-whatsapp-tXf.png',height: 18,color: Colors.white,)
                      ],
                    ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    alignment: Alignment.center,
                    padding:EdgeInsets.symmetric(vertical: 19,horizontal: wi*0.155)
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: wi,
                // alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: wi*0.1),
                child: ElevatedButton(
                    onPressed: () {
                      Future.delayed(Duration.zero).then((value) {
                        showAlert1(context);
                      });
                    },
                    child: Text('Pay by cash',style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFF8F7FC),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    alignment: Alignment.center,
                    padding:EdgeInsets.symmetric(vertical: 19,horizontal: wi*0.2)
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
                height: MediaQuery.of(context).size.height / 2,
                child: ClipRRect(
                  // borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: Scaffold(
                      body: Container(
                        padding: EdgeInsets.all(16),
                        // padding: MediaQuery.of(context).viewInsets,
                          child: Column(
                            children: [
                              Text(
                                'Invoice details ',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black
                              ),
                              ),
                              Text(
                                'Amt and individual taxes(automatically filled up according to the treatments'
                                    'Amt is affected by quantity also.',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18,
                                    color: Colors.black
                                ),
                              ),
                              Text(
                                'Discount wil be calculated on Total Cost. Discount rate is inputted by the doctor.',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18,
                                    color: Colors.black
                                ),
                              ),
                              Text(
                                'Total Tax will be sum total of Treatments Tax amt.',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18,
                                    color: Colors.black
                                ),
                              ),
                              Text(
                                'Grand Tax will be sum total of Total Cost, Discount, Grand Total.',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18,
                                    color: Colors.black
                                ),
                              ),
                            ],
                          )),
                    ))),
          ),
        );
      });
}

showAlert1(BuildContext context) {
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
                height: MediaQuery.of(context).size.height / 3 -60,
                child: ClipRRect(
                  // borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: Scaffold(
                      body: Container(
                        padding: EdgeInsets.all(16),
                        // padding: MediaQuery.of(context).viewInsets,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Amount paid by CAsh',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black
                              ),
                              ),
                              SizedBox(
                                width: 40,
                                child: Divider(
                                  thickness: 1,
                                  height: 0,
                                  color: AppColors.primary,

                                ),
                              ),
                              SizedBox(height: 16,),
                              Container(
                                decoration: BoxDecoration(color: Color(0xFFF8F7FC)),
                                padding: EdgeInsets.all(16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Amount Received',
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('200.00',
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center),
                                    Text('INR',
                                        style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center),
                                  ],
                                ),
                              ),
                              SizedBox(height: 16,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width*0.4,
                                    // alignment: Alignment.center,
                                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.01),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Next',style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: AppColors.primary,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)
                                          ),
                                          alignment: Alignment.center,
                                          padding:EdgeInsets.symmetric(vertical: 19,horizontal: MediaQuery.of(context).size.width*0.04)
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width*0.4,
                                    // alignment: Alignment.center,
                                    padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.01),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Back',style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),),
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xFFF8F7FC),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)
                                          ),
                                          alignment: Alignment.center,
                                          padding:EdgeInsets.symmetric(vertical: 19,horizontal: MediaQuery.of(context).size.width*0.04)
                                      ),
                                    ),
                                  ),
                              ],)
                            ],
                          )),
                    ))),
          ),
        );
      });
}