import 'package:flutter/material.dart';

import '../../../ThemeUi/uitheme.dart';

class AddMedicalrecord extends StatefulWidget {
  const AddMedicalrecord({super.key});

  @override
  State<AddMedicalrecord> createState() => _AddMedicalrecordState();
}

class _AddMedicalrecordState extends State<AddMedicalrecord> {

  var list = [
    listModel(count: 1, title: 'X-ray report_28may23.pdf'),
    listModel(count: 2, title: 'X-ray report_28may23.pdf'),
    listModel(count: 3, title: 'X-ray report_28may23.pdf'),
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
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text('Skip',
              style: TextStyle(
                color: Color(0xFF4646B5),
                fontWeight: FontWeight.w500,
                fontSize: 17
              ),),
            )
          ],
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
                  'Add Medical Record',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
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
                  'MEDICAL RECORDS',
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
                SizedBox(height: he*0.14,),
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
