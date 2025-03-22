import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mockup_page/screens/components/logo_widget.dart';
import 'package:mockup_page/screens/components/personalized_button_widget.dart';

class HomePage extends ComponentElement {
  HomePage(super.widget);

  @override
  Widget build() {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Padding(
        padding: const EdgeInsets.only(
            right: 16.0, left: 16.0, top: 150.0, bottom: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            LogoWidget(),
            SizedBox(
              width: 260,
              child: Text(
                'Get your Money Under Control',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 260,
              child: Text(
                'Manage your expenses Seamslessly.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: const Color.fromARGB(255, 103, 103, 103),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(),
            PersonalizedButtonWidget(
              buttonColor: const Color.fromARGB(255, 94, 93, 231),
              buttonText: 'Sign Up with Email ID',
              textColor: const Color.fromARGB(255, 255, 255, 255),
            ),
            SizedBox(
              height: 16,
            ),
            PersonalizedButtonWidget(
              buttonColor: const Color.fromARGB(255, 255, 255, 255),
              buttonText: 'Sign Up with Google',
              textColor: const Color.fromARGB(255, 0, 0, 0),
              image: 'assets/googleLogo.png',
            ),
            SizedBox(
              height: 48,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account? ',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Sign In',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
