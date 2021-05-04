import 'package:flutter/foundation.dart';

class ThemeProvider with ChangeNotifier {
  bool isLightTheme = false;
  bool get lightTheme => isLightTheme;

  void changeTheme() {
    isLightTheme = !isLightTheme;
    notifyListeners();
  }
}
