import 'package:doctor_consultant_mobile_app/views/auth/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'helpers/theme.dart';
import 'providers/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(home: LoginView()));
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
