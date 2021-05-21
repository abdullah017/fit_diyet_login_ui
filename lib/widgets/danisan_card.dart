import 'package:doctor_consultant_mobile_app/models/danisan_model/danisan_model.dart';
import 'package:flutter/material.dart';

class DanisanCard extends StatelessWidget {
  final Danisan danisan;
  DanisanCard({this.danisan});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      margin: EdgeInsets.only(left: 18.0, bottom: 2.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        width: 150.0,
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14.0),
                child: Image.asset(
                  danisan.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 12.0),
            Text(danisan.name,
                overflow: TextOverflow.clip,
                maxLines: 1,
                textAlign: TextAlign.center,
                style: theme.textTheme.headline6),
            SizedBox(height: 6.0),
            Text(danisan.age.toString(),
                overflow: TextOverflow.clip,
                maxLines: 1,
                textAlign: TextAlign.center,
                style: theme.textTheme.subtitle2),
          ],
        ),
      ),
    );
  }
}
