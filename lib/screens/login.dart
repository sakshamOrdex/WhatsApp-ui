import 'package:flutter/material.dart';
import 'package:whatsapp_clone_ui/screens/otp.dart';
import 'package:whatsapp_clone_ui/widgets/uihelper.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  final TextEditingController _phone = TextEditingController();
  String? selectCountry;
  List<String> country = [
    "India",
    "America",
    "Africa",
    "Germany",
    "Japan",
    "Russia",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              Uihelper.customText(
                text: "Enter your phone number",
                height: 18,
                fontFamily: "interbold",
                fontweight: FontWeight.bold,
                color: Color(0xFF00A884),
              ),
              SizedBox(height: 30),
              Uihelper.customText(
                text: "WhatsApp will need to verify your phone",
                height: 15,
                fontFamily: "regular",
              ),
              SizedBox(height: 8),
              Uihelper.customText(
                text: "number. Carrier charges may apply.",
                height: 15,
                fontFamily: "regular",
              ),
              SizedBox(height: 8),
              Uihelper.customText(
                text: "What’s my number?",
                height: 15,
                fontFamily: "regular",
                color: Color(0xFF00A884),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: DropdownButtonFormField(
                  items: country.map((String country) {
                    return DropdownMenuItem(
                      value: country,
                      child: Text(country),
                    );
                  }).toList(),
                  onChanged: (newvalue) {
                    setState(() {
                      selectCountry = newvalue!;
                    });
                  },
                  value: selectCountry,
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF00A884)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF00A884)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 60,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "+91",
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF00A884)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF00A884)),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF00A884)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: TextField(
                        controller: _phone,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF00A884)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF00A884)),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF00A884)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Uihelper.customButton(
        callback: () {
          login(_phone.text.toString());
          _phone.clear();
        },
        buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  login(String phoneNumber) {
    if (phoneNumber == "") {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Enter phone number",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color(0xFF00A884),
        ),
      );
    } else if (phoneNumber.length < 10) {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Enter valid phone number",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color(0xFF00A884),
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Otp(phoneNumber: phoneNumber)),
      );
    }
  }
}
