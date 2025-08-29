import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/screens/profile.dart';
import 'package:whatsapp_clone_ui/widgets/uihelper.dart';

// class Otp extends StatefulWidget {
//   String? phoneNumber;
//   Otp({super.key,required this.phoneNumber});
//   @override
//   State<Otp> createState() => _Otp();
// }

class Otp extends StatelessWidget {
  String? phoneNumber;
  Otp({required this.phoneNumber});
  TextEditingController otp1 = TextEditingController();
  TextEditingController otp2 = TextEditingController();
  TextEditingController otp3 = TextEditingController();
  TextEditingController otp4 = TextEditingController();
  TextEditingController otp5 = TextEditingController();
  TextEditingController otp6 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              Uihelper.customText(
                text: "Verifying your number",
                height: 18,
                fontFamily: "interbold",
                fontweight: FontWeight.bold,
                color: Color(0xFF00A884),
              ),
              SizedBox(height: 30),
              Uihelper.customText(
                text: "You’ve tried to register +91$phoneNumber",
                height: 14,
                fontFamily: "regular",
              ),
              SizedBox(height: 8),
              Uihelper.customText(
                text: "recently. Wait before requesting an sms or a call",
                height: 14,
                fontFamily: "regular",
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Uihelper.customText(
                    text: "with your code.",
                    height: 14,
                    fontFamily: "regular",
                  ),
                  SizedBox(width: 3),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Uihelper.customText(
                      text: "Wrong number?",
                      height: 14,
                      fontFamily: "regular",
                      color: Color(0XFF00A884),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Uihelper.customContainer(otp1),
                  SizedBox(width: 7),
                  Uihelper.customContainer(otp2),
                  SizedBox(width: 7),
                  Uihelper.customContainer(otp3),
                  SizedBox(width: 7),
                  Uihelper.customContainer(otp4),
                  SizedBox(width: 7),
                  Uihelper.customContainer(otp5),
                  SizedBox(width: 7),
                  Uihelper.customContainer(otp6),
                ],
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                child: Uihelper.customText(
                  text: "Didn’t receive code?",
                  height: 14,
                  fontFamily: "regular",
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Uihelper.customButton(
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Profile()),
          );
        },
        buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
