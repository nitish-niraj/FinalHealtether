import 'package:finalhealtether/screens/misc/WhatsappChat/Model/ChatList.dart';
import 'package:finalhealtether/screens/misc/WhatsappChat/Widget/ChatListWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatList extends StatefulWidget {
  const ChatList({super.key});

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {

  var listChat = [
    ChatListModel(name: 'Ramesh Patel', title:'You have a scheduled a appointment with Dr. Ajit Bhalla', time: '14:30', image:'assets/Ellipse1.png', check: true),
    ChatListModel(name: 'Ramesh Patel', title:'You have a scheduled a appointment with Dr. Ajit Bhalla', time: '14:30', image:'assets/Ellipse2.png', check: true),
    ChatListModel(name: 'Ramesh Patel', title:'You have a scheduled a appointment with Dr. Ajit Bhalla', time: '14:30', image:'assets/Ellipse1.png', check: true),
    ChatListModel(name: 'Ramesh Patel', title:'You have a scheduled a appointment with Dr. Ajit Bhalla', time: '14:30', image:'assets/Ellipse1.png', check: true),
    ChatListModel(name: 'Ramesh Patel', title:'You have a scheduled a appointment with Dr. Ajit Bhalla', time: '14:30', image:'assets/Ellipse1.png', check: true),
    ChatListModel(name: 'Ramesh Patel', title:'You have a scheduled a appointment with Dr. Ajit Bhalla', time: '14:30', image:'assets/Ellipse1.png', check: true),
    ChatListModel(name: 'Ramesh Patel', title:'You have a scheduled a appointment with Dr. Ajit Bhalla', time: '14:30', image:'assets/Ellipse1.png', check: true),
    ChatListModel(name: 'Ramesh Patel', title:'You have a scheduled a appointment with Dr. Ajit Bhalla', time: '14:30', image:'assets/Ellipse1.png', check: true),
    ChatListModel(name: 'Ramesh Patel', title:'You have a scheduled a appointment with Dr. Ajit Bhalla', time: '14:30', image:'assets/Ellipse1.png', check: true),
    ChatListModel(name: 'Ramesh Patel', title:'You have a scheduled a appointment with Dr. Ajit Bhalla', time: '14:30', image:'assets/Ellipse1.png', check: true),
    ChatListModel(name: 'Ramesh Patel', title:'You have a scheduled a appointment with Dr. Ajit Bhalla', time: '14:30', image:'assets/Ellipse1.png', check: true),
    ChatListModel(name: 'Ramesh Patel', title:'You have a scheduled a appointment with Dr. Ajit Bhalla', time: '14:30', image:'assets/Ellipse1.png', check: true),
    ChatListModel(name: 'Ramesh Patel', title:'You have a scheduled a appointment with Dr. Ajit Bhalla', time: '14:30', image:'assets/Ellipse1.png', check: true),
    ChatListModel(name: 'Ramesh Patel', title:'You have a scheduled a appointment with Dr. Ajit Bhalla', time: '14:30', image:'assets/Ellipse1.png', check: true),
    ChatListModel(name: 'Ramesh Patel', title:'You have a scheduled a appointment with Dr. Ajit Bhalla', time: '14:30', image:'assets/Ellipse1.png', check: true),
    ChatListModel(name: 'Ramesh Patel', title:'You have a scheduled a appointment with Dr. Ajit Bhalla', time: '14:30', image:'assets/Ellipse1.png', check: true),
  ];
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height/844;
    var wi = MediaQuery.of(context).size.width/389;
    TextEditingController  search = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chat',
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
        width: wi*389,
        height: he*844,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height:41,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: TextFormField(
                controller: search,
                inputFormatters: [LengthLimitingTextInputFormatter(40)],
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search,size: 24*wi,),
                    hintText: 'Quick Search',
                    contentPadding: EdgeInsets.all(16*wi),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                        BorderSide(width: 1, color: Color(0xFF6A798A))
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                        BorderSide(width: 1, color: Color(0xFF6A798A)))),
                keyboardType: TextInputType.name,
                style: TextStyle(
                  fontSize: 14*wi,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF00E0C7),
                ),
                cursorColor: Color(0xFF6A798A)),

          ),
          SizedBox(height: 16*he,),
          Text('Recent Chats',style: GoogleFonts.poppins(
            fontSize: 12*wi,
            fontWeight: FontWeight.normal,
            color: Color(0xFF8E8E8E)
          ),),
          SizedBox(height: 8*he,),
          Container(
            padding: EdgeInsets.only(left: 16,right: 16),
            width: MediaQuery.of(context).size.width,
            height:he*570,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: listChat.length,
              itemBuilder: (context,index){
                return ChatListWiget(context, listChat[index]);
              },
            ),
          ),
        ],
        ),
      ),
    );
  }
}
