import 'package:finalhealtether/screens/Records/Model/appointment_TimeLine.dart';
import 'package:flutter/material.dart';
import '../../../ThemeUi/uitheme.dart';


Widget appointTimeLineWidget(BuildContext context, apponitmentTimeLineModel data){
  return Container(
    padding: EdgeInsets.only(top: 2),
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height*0.108,
    child: Row (
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.circle,size: 16,color: AppColors.primary,),
        SizedBox(width: 4,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(data.Date,style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 13
            ),),
            Container(
              width: MediaQuery.of(context).size.width*0.8,
              height: MediaQuery.of(context).size.width*0.108,
              child: Text(data.Title,style: TextStyle(
                color: Color(0xFF6D6D6D),
                fontSize: 17,
                fontWeight: FontWeight.normal
              ),),
            )
          ],
        )
      ],
    ),
  );
}
