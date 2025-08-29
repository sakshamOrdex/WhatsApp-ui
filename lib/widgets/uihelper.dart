import 'package:flutter/material.dart';

class Uihelper {
  static customButton({
    required VoidCallback callback,
    required String buttonname,
    String? fontFamily,
  }) {
    return SizedBox(
      width: 350,
      height: 35,
      child: ElevatedButton(
        onPressed: () {
          callback();
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Text(
          buttonname,
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }

  static customText({
    required String text,
    required double height,
    Color? color,
    FontWeight? fontweight,
    String? fontFamily,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: height,
        color: color ?? Color(0xFF5E5E5E),
        fontWeight: fontweight,
        fontFamily: 'fontfamily',
      ),
    );
  }

  static customContainer(TextEditingController controller) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFD9D9D9),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(border: InputBorder.none),
        ),
      ),
    );
  }
}
