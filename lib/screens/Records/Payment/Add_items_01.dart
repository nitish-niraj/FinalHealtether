import 'package:flutter/material.dart';

class AddItem extends StatefulWidget {
  const AddItem({super.key});

  @override
  State<AddItem> createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  var Consultationctr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var wi = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Payments Receipt',
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
        width: wi,
        height: he,
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text('Add items',style: TextStyle(
                 fontSize: 16,
                 color: Colors.black,
                 fontWeight: FontWeight.w500
               ),),
              SizedBox(height: 16,),
              Text('Treatment 1',style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500
              ),),
              SizedBox(height: 6,),
              Container(
                width: wi,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFFF8F7FC),
                ),
                child: TextFormField(
                  controller: Consultationctr,
                  textAlignVertical:
                  TextAlignVertical
                      .center,
                  keyboardType:
                  TextInputType.name,
                  textInputAction:
                  TextInputAction.next,
                  decoration: InputDecoration(
                      isCollapsed: true,
                      contentPadding:
                      EdgeInsets.zero,
                      border:
                      InputBorder.none,
                      hintText: "Consultation",
                      hintStyle: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 18 ,
                          fontWeight:
                          FontWeight.w400,
                          height: 1.2125 ,
                          color:Colors.black)),
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 18 ,
                    fontWeight:
                    FontWeight.w400,
                    color: Color(0xff2c2c2c),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: wi*0.2,
                    child: Text('Quantity',style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500
                    ),),
                  ),
                  Spacer(),
                  Container(
                    width: wi*0.7,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F7FC),
                    ),
                    child: TextFormField(
                      controller: Consultationctr,
                      textAlignVertical:
                      TextAlignVertical
                          .center,
                      textAlign: TextAlign.end,
                      keyboardType:
                      TextInputType.name,
                      textInputAction:
                      TextInputAction.next,
                      decoration: InputDecoration(
                          isCollapsed: true,
                          contentPadding:
                          EdgeInsets.zero,
                          border:
                          InputBorder.none,

                          hintText: "1",
                          hintStyle: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 18 ,
                              fontWeight:
                              FontWeight.w400,
                              height: 1.2125 ,
                              color:Colors.black)),
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 18 ,
                        fontWeight:
                        FontWeight.w400,
                        color: Color(0xff2c2c2c),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: wi*0.2,
                    child: Text('Amt/unit',style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500
                    ),),
                  ),
                  Spacer(),
                  Container(
                    width: wi*0.7,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F7FC),
                    ),
                    child: TextFormField(
                      controller: Consultationctr,
                      textAlignVertical:
                      TextAlignVertical
                          .center,
                      textAlign: TextAlign.end,
                      keyboardType:
                      TextInputType.name,
                      textInputAction:
                      TextInputAction.next,
                      decoration: InputDecoration(
                          isCollapsed: true,
                          contentPadding:
                          EdgeInsets.zero,
                          border:
                          InputBorder.none,
                          //  suffixText: 'INR',
                          // suffixStyle: TextStyle(
                          //   fontWeight: FontWeight.bold,
                          //   fontSize: 18,
                          //   color: Colors.black
                          // ),
                          hintText: "200 INR",
                          hintStyle: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 18 ,
                              fontWeight:
                              FontWeight.w400,
                              height: 1.2125 ,
                              color:Colors.black)),
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 18 ,
                        fontWeight:
                        FontWeight.w400,
                        color: Color(0xff2c2c2c),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: wi*0.2,
                    child: Text('Dst. rate',style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500
                    ),),
                  ),
                  Spacer(),
                  Container(
                    width: wi*0.7,
                     padding: EdgeInsets.only(left: 16,right: 16,top:4 ,bottom: 4),
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F7FC),
                    ),
                    child: TextFormField(
                      controller: Consultationctr,
                      textAlignVertical:
                      TextAlignVertical
                          .center,
                      textAlign: TextAlign.end,
                      keyboardType:
                      TextInputType.name,
                      textInputAction:
                      TextInputAction.next,
                      decoration: InputDecoration(
                          isCollapsed: true,
                          contentPadding:
                          EdgeInsets.zero,
                          border:
                          InputBorder.none,
                          suffixIcon: Icon(Icons.percent,size: 18,color: Colors.black,),
                          hintText: "0.00",
                          hintStyle: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 18 ,
                              fontWeight:
                              FontWeight.w400,
                              height: 1.2125 ,
                              color:Colors.black)),
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 18 ,
                        fontWeight:
                        FontWeight.w400,
                        color: Color(0xff2c2c2c),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(
                    width: wi*0.3,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.remove,size: 18,color: Color(0xFF5351C7),),
                            SizedBox(width: 12,),
                            Text('Delete item',style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF5351C7),
                                fontWeight: FontWeight.w500
                            ),),
                          ],
                        ),
                        Divider(
                          thickness: 2,
                          height: 0,
                          color: Color(0xFF5351C7),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: wi*0.41,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.add,size: 18,color: Color(0xFF5351C7),),
                            SizedBox(width: 12,),
                            Text('Add another item',style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF5351C7),
                                fontWeight: FontWeight.w500
                            ),),
                          ],
                        ),
                        Divider(
                          thickness: 2,
                          height: 0,
                          color: Color(0xFF5351C7),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
