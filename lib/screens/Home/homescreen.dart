import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/screens/Home/callsscreen.dart';
import 'package:whatsapp_clone_ui/screens/Home/camerascreen.dart';
import 'package:whatsapp_clone_ui/screens/Home/chatsscreen.dart';
import 'package:whatsapp_clone_ui/screens/Home/statusscreen.dart';
import 'package:whatsapp_clone_ui/widgets/uihelper.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
            indicatorColor: Colors.white,
          ),
          toolbarHeight: 90,
          title: Uihelper.customText(
            text: "WhatsApp",
            height: 20,
            color: Colors.white,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset("assets/image/Search.png"),
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Camerascreen(),
            Chatsscreen(),
            Statusscreen(),
            Callsscreen(),
          ],
        ),
      ),
    );
  }
}
