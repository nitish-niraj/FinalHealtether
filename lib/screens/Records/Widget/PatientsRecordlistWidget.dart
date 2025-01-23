import 'package:finalhealtether/screens/Records/Patient%20Record/Patientdetails.dart';
import 'package:flutter/material.dart';

import '../Model/PatientsrecordlistModel.dart';



Widget PatientsRecordlistWidget(BuildContext context, PatientsRecordlistModel data){
  return Padding(
    padding: const EdgeInsets.only(top: 6),
    child: InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Patientdetails()));
      },
      child: Container(
        padding: EdgeInsets.only(top: 8,left: 12,right: 12,bottom: 8),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*0.09,
        decoration: BoxDecoration(
          color: Color(0xFFEBEBEB)
        ),
        child: Row (
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(data.name,style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
                ),),
                Text(data.pNo,style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
                ),),
              ],
            ),
            Spacer(),
            Image.asset('assets/images/ion-logo-whatsapp-ozu.png',height: 24,color: Color(0xFF25D366),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 14),
              child: Icon(Icons.call,color: Colors.black,size: 21,),
            )
          ],
        ),
      ),
    ),
  );
}
