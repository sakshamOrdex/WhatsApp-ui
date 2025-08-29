import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget
{
  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        centerTitle: true,
      ),
      );
  }
}