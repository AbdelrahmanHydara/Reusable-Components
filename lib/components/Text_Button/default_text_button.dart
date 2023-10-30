import 'package:flutter/material.dart';

class DefaultTextButton extends StatelessWidget
{
  DefaultTextButton({super.key,required this.onPressed,required this.text,
    this.fontSize, required this.toUpperCase,this.radius,this.backgroundColor,this.textColor});

  final Function() onPressed;
  final String text;
  double? fontSize;
  double? radius;
  Color? backgroundColor;
  Color? textColor;
  final bool toUpperCase;

  @override
  Widget build(BuildContext context)
  {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(backgroundColor??Colors.teal),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius??12),
          ),
        ),
      ),
      child: Text(
        toUpperCase? text.toUpperCase() : text,
        style: TextStyle(
          color: textColor??Colors.white,
          fontSize: fontSize??28,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}