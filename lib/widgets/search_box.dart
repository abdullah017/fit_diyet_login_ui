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
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.green,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]),
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
