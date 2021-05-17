import 'package:doctor_consultant_mobile_app/views/auth/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LoginView(),
    debugShowCheckedModeBanner: false,
  ));
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (context) => ThemeProvider()),
//       ],
//       child: Consumer<ThemeProvider>(builder: (context, theme, snapshot) {
//         return MaterialApp(
//           title: 'Doctor Consultant',
//           debugShowCheckedModeBanner: false,
//           theme: themeData(context),
//           darkTheme: darkThemeData(context),
//           themeMode: theme.isLightTheme ? ThemeMode.dark : ThemeMode.light,
//           home: LoginView(),
//         );
//       }),
//     );
//   }
// }
