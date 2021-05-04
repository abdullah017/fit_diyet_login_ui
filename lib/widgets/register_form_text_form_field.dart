import 'package:flutter/material.dart';

class RegisterFormTextFormField extends StatefulWidget {
  final String labelText;
  final IconData prefixIcon;
  final IconButton suffixIcon;
  final Function onChanged;
  final Function onPressed;
  final bool obscureText;

  const RegisterFormTextFormField({
    Key key,
    @required this.labelText,
    @required this.prefixIcon,
    @required this.onChanged,
    this.suffixIcon,
    this.obscureText = true,
    this.onPressed,
  }) : super(key: key);

  @override
  _RegisterFormTextFormFieldState createState() =>
      _RegisterFormTextFormFieldState();
}

class _RegisterFormTextFormFieldState extends State<RegisterFormTextFormField> {
  Function onChange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          labelText: widget.labelText,
          prefixIcon: Icon(widget.prefixIcon),
          suffixIcon: widget.suffixIcon),
      onChanged: widget.onChanged,
    );
  }
}
