import 'package:doctor_consultant_mobile_app/widgets/register_form_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
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
                          title: Text('Diyetisyen'),
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
                          title: Text('Danışan'),
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
                              labelText: 'Ad',
                              prefixIcon: Icons.account_circle,
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
                              labelText: 'Soyad',
                              prefixIcon: Icons.account_circle,
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
                            child: Visibility(
                              visible: _isChange,
                              child: RegisterFormTextFormField(
                                labelText: 'T.C',
                                prefixIcon: Icons.assignment_ind_rounded,
                                onChanged: (value) {
                                  setState(() {
                                    _email = value.trim();
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: RegisterFormTextFormField(
                              labelText: 'Telefon',
                              prefixIcon: Icons.phone,
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
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (radioDeger == 1) {
                        print('Diyetisyen rolü seçildi');
                      }
                      if (radioDeger == 2) {
                        print('Danışan rolü seçildi');
                      }

                      // auth
                      //     .signInWithEmailAndPassword(
                      //         email: _email, password: _password)
                      //     .then((_) {
                      //   Navigator.of(context).pushReplacement(MaterialPageRoute(
                      //       builder: (context) => HomeView()));
                      // });
                    },
                    child: Text(
                      'KAYDOL',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Hesabınız var mı'),
                      TextButton(
                        onPressed: null,
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
