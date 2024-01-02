import 'package:finalhealtether/screens/Records/Model/PatientsrecordlistModel.dart';
import 'package:finalhealtether/screens/Records/Widget/PatientsRecordlistWidget.dart';
import 'package:finalhealtether/themeUI/ui.dart';
import 'package:flutter/material.dart';

class PatientRecords extends StatefulWidget {
  const PatientRecords({super.key});

  @override
  State<PatientRecords> createState() => _PatientRecordsState();
}

class _PatientRecordsState extends State<PatientRecords> {
  var list =[
    PatientsRecordlistModel(name: 'Jane Doe', pNo: '+91 869 523145'),
    PatientsRecordlistModel(name: 'Anna Holmes', pNo: '+91 869 523145'),
    PatientsRecordlistModel(name: 'Anna Holmes', pNo: '+91 869 523145'),
    PatientsRecordlistModel(name: 'Anna Holmes', pNo: '+91 869 523145'),
  ];
  @override
  Widget build(BuildContext context) {
    var wi = MediaQuery.of(context).size.width;
    var hi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Patient Records',
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
        margin: EdgeInsets.symmetric(horizontal: 16),
        width: wi,
        height: hi,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10,),
                width: wi,
                height: 59,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: Color(0xFFF8F7FC),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextFormField(
                    controller: null,
                    decoration: InputDecoration(
                        labelText: "Quick Search",
                        suffixIcon:Image.asset('assets/images/system-uicons-filtering.png',height: 24,),
                        border: InputBorder.none),
                    style: TextStyle(
                      color: Color(0xFF6A798A),
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Text('All 12 appointments are listed',
              style: TextStyle(
                fontSize: 17,
                color: Colors.black
              ),),
           Container(
             width: wi,
             height: hi*0.5,
             child: ListView.builder(
               itemCount:list.length,
               itemBuilder: (context,index){
                 return PatientsRecordlistWidget(context, list[index]);
               },
             ),
           ),
              SizedBox(height: hi*0.17,),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: MediaQuery.of(context).size.width * 0.15,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF00E0C7), // Color of the shadow
                        offset: Offset(0, 2), // Offset of the shadow (horizontal, vertical)
                        blurRadius: 4, // Blur radius of the shadow
                        spreadRadius: 0, // Spread radius of the shadow
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(AppColors.primary),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                7), // Set the radius to 0 for a rectangular shape
                          ),
                        ),
                      ),
                      onPressed: () {
                      },
                      child: Text(
                        'Add member',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
