import 'package:flutter/material.dart';

import '../../../ThemeUi/uitheme.dart';

class AddPrescription extends StatefulWidget {
  const AddPrescription({super.key});

  @override
  State<AddPrescription> createState() => _AddPrescriptionState();
}

class _AddPrescriptionState extends State<AddPrescription> {

   var list = [
     listModel(count: 1, title: 'Consultation_01july23.png'),
     listModel(count: 2, title: 'Consultation_28may23.png'),
     listModel(count: 3, title: 'Consultation_01july23.png'),
   ];

  @override
  Widget build(BuildContext context) {
    var wi = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Start consultation',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Add Prescription ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: wi,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Create Digital Prescription',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        padding: EdgeInsets.only(top: 16, bottom: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: wi,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: wi * 0.4,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(
                                0xFFD9D9D9), // Set the border color to black
                            width: 2.0, // Set the border width
                          ),
                        ),
                      ),
                      Text(
                        'or',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                      Container(
                        width: wi * 0.4,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(
                                0xFFD9D9D9), // Set the border color to black
                            width: 2.0, // Set the border width
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFA1A1A1)),
                  child: Row(
                    children: [
                      Text(
                        'Browse to upload documents',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/images/upload-cloud.png',
                        height: 34,
                        width: 32,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Please upload image/document of size less than 50Mb',
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xFF6D6D6D),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'PRESCRIPTIONS RECORDS',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                SizedBox(
                  width: wi * 0.3,
                  child: Divider(
                    thickness: 2,
                    height: 0,
                    color: AppColors.primary,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: wi,
                  height: he * 0.4,
                  child: ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context,index){
                      return listWidget(context, list[index]);
                    },
                  ),
                ),
                SizedBox(height: he*0.12,),
                Container(
                  width: wi,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text(
                      'NEXT',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        padding: EdgeInsets.symmetric(vertical: 19),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class listModel {
  final int count;
  final String title;
  listModel({required this.count, required this.title});
}

Widget listWidget(BuildContext context, listModel data) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height*0.04,
    child: Row(
      children: [
        Text('${data.count.toString()}.'),
        SizedBox(width: 2,),
        Text(data.title),
        Spacer(),
        Image.asset(
          'assets/images/vector1.png',
          height: 17,
          color: Colors.black,
        ),
        SizedBox(width:8,),
        Icon(
          Icons.delete,
          size: 17,
          color: Colors.black,
        )
      ],
    ),
  );
}
