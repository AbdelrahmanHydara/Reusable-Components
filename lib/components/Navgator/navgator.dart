import 'package:flutter/material.dart';

navigateAndFinish(
    context,
    widget,
    ) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,)
      ,(route)
    {
      return false;
    },
    );

navigateTo(
    context,
    widget,) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);