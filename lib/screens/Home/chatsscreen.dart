import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/widgets/uihelper.dart';
import 'package:whatsapp_clone_ui/screens/Home/contactscree.dart';

class Chatsscreen extends StatelessWidget {
  var arrContent = [
    {
      "images":
          "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
      "name": "Aron",
      "lastmsg": "Lorem Ipsum",
      "time": "05:45 am",
      "msg": "7",
    },
    {
      "images":
          "https://images.healthshots.com/healthshots/en/uploads/2020/12/08182549/positive-person.jpg",
      "name": "Aron1",
      "lastmsg": "Flutter",
      "time": "06:45 am",
      "msg": "1",
    },
    {
      "images":
          "https://digitalnectar.in/wp-content/uploads/2024/04/banner-right-img.webp",
      "name": "WSCUBETECH",
      "lastmsg": "Flutter Batch is Starting",
      "time": "07:45 am",
      "msg": "2",
    },
    {
      "images":
          "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
      "name": "Aron",
      "lastmsg": "Lorem Ipsum",
      "time": "05:45 am",
      "msg": "7",
    },
    {
      "images":
          "https://images.healthshots.com/healthshots/en/uploads/2020/12/08182549/positive-person.jpg",
      "name": "Aron1",
      "lastmsg": "Flutter",
      "time": "06:45 am",
      "msg": "1",
    },
    {
      "images":
          "https://digitalnectar.in/wp-content/uploads/2024/04/banner-right-img.webp",
      "name": "WSCUBETECH",
      "lastmsg": "Flutter Batch is Starting",
      "time": "07:45 am",
      "msg": "2",
    },
    {
      "images":
          "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
      "name": "Aron",
      "lastmsg": "Lorem Ipsum",
      "time": "05:45 am",
      "msg": "7",
    },
    {
      "images":
          "https://images.healthshots.com/healthshots/en/uploads/2020/12/08182549/positive-person.jpg",
      "name": "Aron1",
      "lastmsg": "Flutter",
      "time": "06:45 am",
      "msg": "1",
    },
    {
      "images":
          "https://digitalnectar.in/wp-content/uploads/2024/04/banner-right-img.webp",
      "name": "WSCUBETECH",
      "lastmsg": "Flutter Batch is Starting",
      "time": "07:45 am",
      "msg": "2",
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
