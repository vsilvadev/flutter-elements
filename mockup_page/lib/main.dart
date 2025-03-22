import 'package:flutter/widgets.dart';
import 'package:mockup_page/screens/home_page.dart';

void main() {
  runApp(AppMain());
}

class AppMain extends Widget {
  const AppMain({super.key});

  @override
  Element createElement() {
    return HomePage(this);
  }
}
