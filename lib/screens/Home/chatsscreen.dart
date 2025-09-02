import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/widgets/uihelper.dart';

class Chatsscreen extends StatelessWidget {
  var arrContent = [
    {
      "images":
          "https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?cs=srgb&dl=pexels-italo-melo-881954-2379005.jpg&fm=jpg",
      "name": "Aron",
      "lastmsg": "Hope you reached home!",
      "time": "05:26 pm",
      "msg": "7",
    },
    {
      "images":
          "https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?cs=srgb&dl=pexels-italo-melo-881954-2379005.jpg&fm=jpg",
      "name": "Aron",
      "lastmsg": "Hope you reached home!",
      "time": "05:26 pm",
      "msg": "7",
    },
    {
      "images":
          "https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?cs=srgb&dl=pexels-italo-melo-881954-2379005.jpg&fm=jpg",
      "name": "Aron",
      "lastmsg": "Hope you reached home!",
      "time": "05:26 pm",
      "msg": "7",
    },
    {
      "images":
          "https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?cs=srgb&dl=pexels-italo-melo-881954-2379005.jpg&fm=jpg",
      "name": "Aron",
      "lastmsg": "Hope you reached home!",
      "time": "05:26 pm",
      "msg": "7",
    },
    {
      "images":
          "https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?cs=srgb&dl=pexels-italo-melo-881954-2379005.jpg&fm=jpg",
      "name": "Aron",
      "lastmsg": "Hope you reached home!",
      "time": "05:26 pm",
      "msg": "7",
    },
    {
      "images":
          "https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?cs=srgb&dl=pexels-italo-melo-881954-2379005.jpg&fm=jpg",
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
      floatingActionButton: CircleAvatar(
        radius: 30,
        backgroundColor: Color(0xFF008665),
        child: Image.asset("assets/image/chat.png"),
      ),
    );
  }
}
