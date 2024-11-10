import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/Screens/login/login_screen.dart';
import 'package:whatsapp_ui_clone/Widgets/ui_helper.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/boarding.png"),
            const SizedBox(
              height: 15,
            ),
            UiHelper.customText(
                text: "Welcome to WhatsApp", height: 20, color: Colors.black),
            const SizedBox(
              height: 15,
            ),
            const Text.rich(
              TextSpan(
                text: "Read out ",
                style: TextStyle(fontSize: 16),
                children: [
                  TextSpan(
                    text: "Privacy Policy",
                    style: TextStyle(color: Colors.blue),
                  ),
                  TextSpan(text: ". Tap 'Agree and continue'"),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text.rich(
              TextSpan(
                text: "to accept the ",
                style: TextStyle(fontSize: 16),
                children: [
                  TextSpan(
                    text: "Terms of Service",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(
        callback: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginScreen()));
        },
        buttonname: "Agree and continue",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
