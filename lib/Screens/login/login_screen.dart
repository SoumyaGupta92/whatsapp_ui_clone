import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/Screens/Otp/otp_screen.dart';
import 'package:whatsapp_ui_clone/Widgets/ui_helper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  List<String> listOfCountries = [
    'Australia',
    'Bolivia',
    'Canada',
    'Denmark',
    'Etopia',
    'Finland',
    'Germany',
    'Hungary',
    'India'
  ];

  String selectedCountry = 'India';

  TextEditingController phoneController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Center(
            child: UiHelper.customText(
              text: "Enter your phone number",
              height: 20,
              fontWeight: FontWeight.bold,
              color: const Color(0XFF00A884),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          UiHelper.customText(
              text: "WhatsApp will need to verify your phone", height: 16),
          UiHelper.customText(
              text: "number. Carrier charges may apply.", height: 16),
          UiHelper.customText(
              text: "What's my number?",
              height: 16,
              color: const Color(0XFF00A884)),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: DropdownButtonFormField(
              items: listOfCountries.map((String country) {
                return DropdownMenuItem(
                  child: Text(country),
                  value: country,
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  selectedCountry = newValue!;
                });
              },
              value: selectedCountry,
              decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A884))),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff00a884)))),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 50,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: "+91",
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff00a884),
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff00a884)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextFormField(
                    controller: phoneController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff00a884)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff00a884)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButton: UiHelper.customButton(
          callback: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => OtpScreen()));
          },
          buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
