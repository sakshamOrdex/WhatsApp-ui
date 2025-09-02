import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/widgets/uihelper.dart';
import 'package:whatsapp_clone_ui/screens/Home/contactscree.dart';

class Chatsscreen extends StatelessWidget {
  var arrContent = [
    {
      "images": "assets/image/user1.png",
      "name": "Aron",
      "lastmsg": "Hope you reached home!",
      "time": "05:26 pm",
      "msg": "7",
    },
    {
      "images": "assets/image/user2.png",
      "name": "Kethyy",
      "lastmsg": "Have you seen the PPT?",
      "time": "04:16 pm",
      "msg": "1",
    },
    {
      "images": "assets/image/user3.png",
      "name": "Arine",
      "lastmsg": "Hope you reached home!",
      "time": "05:00 pm",
      "msg": "4",
    },
    {
      "images": "assets/image/user4.png",
      "name": "William",
      "lastmsg": "Hope you reached home!",
      "time": "06:06 am",
      "msg": "4",
    },
    {
      "images": "assets/image/user5.png",
      "name": "Chris",
      "lastmsg": "Hope you reached home!",
      "time": "02:46 pm",
      "msg": "3",
    },
    {
      "images": "assets/image/user1.png",
      "name": "Aron",
      "lastmsg": "Hope you reached home!",
      "time": "05:26 pm",
      "msg": "7",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: arrContent.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      arrContent[index]["images"].toString(),
                    ),
                  ),
                  title: Uihelper.customText(
                    text: arrContent[index]["name"].toString(),
                    height: 14,
                    fontFamily: "interbold",
                    fontweight: FontWeight.bold,
                  ),
                  subtitle: Uihelper.customText(
                    text: arrContent[index]["lastmsg"].toString(),
                    height: 13,
                    color: Color(0xFF889095),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Uihelper.customText(
                        text: arrContent[index]["time"].toString(),
                        height: 12,
                        fontFamily: "interbold",
                        color: Color(0xFF026500),
                      ),
                      SizedBox(height: 5),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Color(0xFF036A01),
                        child: Uihelper.customText(
                          text: arrContent[index]["msg"].toString(),
                          height: 12,
                          fontFamily: "interbold",
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ContactScreen()),
          );
        },
        child: CircleAvatar(
          radius: 25,
          backgroundColor: Color(0xFF008665),
          child: Icon(Icons.chat_rounded, color: Colors.white),
        ),
      ),
    );
  }
}
