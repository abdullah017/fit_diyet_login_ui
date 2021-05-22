import 'package:doctor_consultant_mobile_app/views/auth/login.dart';
import 'package:doctor_consultant_mobile_app/widgets/register_form_text_form_field.dart';
import 'package:flutter/material.dart';

class PasswordResetView extends StatefulWidget {
  @override
  _PasswordResetViewState createState() => _PasswordResetViewState();
}

class _PasswordResetViewState extends State<PasswordResetView> {
  // ignore: unused_field
  String _email, _password;

  int radioDeger = 0;
  bool _obscureText = false;
  bool _isChange = false;

  _roleChange() {
    setState(() {
      _isChange = !_isChange;
      debugPrint(_isChange.toString());
    });
  }

  _toggle() {
    setState(() {
      _obscureText = !_obscureText;
      debugPrint(_obscureText.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                          activeColor: Colors.pink,
                          title: Text('Danışan'),
                          value: 1,
                          groupValue: radioDeger,
                          onChanged: (int veri) {
                            _roleChange();
                            radioDeger = veri;
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          activeColor: Colors.pink,
                          title: Text('Diyetisyen'),
                          value: 2,
                          groupValue: radioDeger,
                          onChanged: (int veri) {
                            _roleChange();
                            radioDeger = veri;
                          },
                        ),
                      ),
                    ],
                  ),
                  Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: RegisterFormTextFormField(
                              labelText: 'E-Posta',
                              prefixIcon: Icons.mail,
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
                            child: RegisterFormTextFormField(
                              labelText: 'Parola',
                              prefixIcon: Icons.lock,
                              onChanged: (value) {
                                setState(() {
                                  _password = value.trim();
                                });
                              },
                              obscureText: _obscureText,
                              suffixIcon: IconButton(
                                icon: Icon(_obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  _toggle();
                                },
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: RegisterFormTextFormField(
                              labelText: 'Parola',
                              prefixIcon: Icons.lock,
                              onChanged: (value) {
                                setState(() {
                                  _password = value.trim();
                                });
                              },
                              obscureText: _obscureText,
                              suffixIcon: IconButton(
                                icon: Icon(_obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  _toggle();
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (radioDeger == 1 &&
                          _email == "a@mail.com" &&
                          _password == "80") {
                        print('Danisan rolü seçildi');
                      }
                      if (radioDeger == 2 &&
                          _email == "asd@mail.com" &&
                          _password == "80") {
                        print('Diyetisyen rolü seçildi');
                      }
                    },
                    child: Text(
                      'ONAYLA',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Hesabınız var mı'),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginView(),
                            ),
                          );
                        },
                        child: Text(
                          'giriş yapın!',
                          style: TextStyle(color: Colors.pink),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
