import 'package:doctor_consultant_mobile_app/helpers/colors.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  final String hintText;
  const SearchBox({
    Key key,
    @required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0,
      margin: EdgeInsets.symmetric(horizontal: 18.0),
      alignment: Alignment.center,
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.search, color: kPrimaryLightColor),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
