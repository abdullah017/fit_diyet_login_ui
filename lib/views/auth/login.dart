import 'package:doctor_consultant_mobile_app/views/auth/register.dart';
import 'package:doctor_consultant_mobile_app/views/danisan/danisan_home.dart';
import 'package:doctor_consultant_mobile_app/views/diyetisyen/diyetisyen_home.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  String _email, _password;

  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  int radioDeger = 0;
  bool _isChange = false;

  _roleChange() {
    setState(() {
      _isChange = !_isChange;
      debugPrint(_isChange.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: RadioListTile(
                    activeColor: Colors.pink,
                    title: Text('Diyetisyen'),
                    value: 1,
                    groupValue: radioDeger,
                    onChanged: (int veri) {
                      _roleChange();
                      radioDeger = veri;
                      debugPrint("$radioDeger");
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile(
                    activeColor: Colors.pink,
                    title: Text('Danışan'),
                    value: 2,
                    groupValue: radioDeger,
                    onChanged: (int veri) {
                      _roleChange();
                      radioDeger = veri;
                      debugPrint("$radioDeger");
                    },
                  ),
                ),
              ],
            ),
            Form(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          labelText: 'E-POSTA',
                          prefixIcon: Icon(
                            Icons.mail,
                          ),
                        ),
                        onChanged: (value) {
                          setState(() {
                            _email = value.trim();
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: TextFormField(
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          labelText: 'Parola',
                          prefixIcon: Icon(
                            Icons.lock,
                          ),
                          suffixIcon: IconButton(
                              icon: Icon(_obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: _toggle),
                        ),
                        onChanged: (value) {
                          setState(() {
                            _password = value.trim();
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (radioDeger == 2) {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => DanisanHomeView()));
                }
                if (radioDeger == 1) {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => DiyetisyenHomeView()));
                }
              },
              child: Text(
                'GİRİŞ YAP',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Hesabınız yok mu hemen'),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterView()));
                  },
                  child: Text(
                    'kaydolun!',
                    style: TextStyle(color: Colors.pink),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
