import 'package:flutter/material.dart';

AppBar appBar({
 required String text1, text2,
}) => AppBar(
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children:
        [
          Text(
            text1,
          ),
          Text(
            text2,
            style: const TextStyle(
              color: Colors.teal,
            ),
          ),
        ],
      ),
    );

Widget myDivider() => Container(
      width: double.infinity,
      height: 1,
      color: Colors.grey[400],
    );

navigateTo(
    context,
    widget,) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);