import 'package:flutter/material.dart';

class headingBigTextWidget extends StatelessWidget {
final String text;
const headingBigTextWidget({
super.key, required this.text,
});

@override
Widget build(BuildContext context) {
return Text(text, style: TextStyle(
fontSize: 25,
fontWeight: FontWeight.bold
),);
}
}
