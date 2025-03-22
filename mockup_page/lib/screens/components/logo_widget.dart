import 'package:flutter/widgets.dart';

class LogoWidget extends Widget {
  const LogoWidget({super.key});

  @override
  Element createElement() {
    return LogoElement(this);
  }
}

class LogoElement extends ComponentElement {
  LogoElement(super.widget);

  @override
  Widget build() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 48),
      child: SizedBox(
          height: 108,
          width: 108,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [
              Column(
                spacing: 8,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 94, 93, 231),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 94, 93, 231),
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(50)),
                    ),
                  )
                ],
              ),
              Container(
                height: 108,
                width: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 94, 93, 231),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                ),
              )
            ],
          )),
    );
  }
}
