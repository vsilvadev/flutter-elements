import 'package:flutter/widgets.dart';

class PersonalizedButtonWidget extends Widget {
  final Color buttonColor;
  final String buttonText;
  final Color textColor;
  final String? image;
  const PersonalizedButtonWidget({
    super.key,
    required this.buttonColor,
    required this.buttonText,
    required this.textColor,
    this.image,
  });

  @override
  Element createElement() {
    return PersonalizedButtonElement(this,
        buttonColor: buttonColor,
        buttonText: buttonText,
        textColor: textColor,
        image: image);
  }
}

class PersonalizedButtonElement extends ComponentElement {
  final Color buttonColor;
  final String buttonText;
  final Color textColor;
  final String? image;
  PersonalizedButtonElement(
    super.widget, {
    required this.buttonColor,
    required this.buttonText,
    required this.textColor,
    this.image,
  });

  @override
  Widget build() {
    final String? buttonImage = image;

    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10,
        children: [
          if (buttonImage != null)
            Image.asset(
              buttonImage,
              height: 30,
            ),
          Text(
            buttonText,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
