import 'package:flutter/material.dart';

class DefaultMaterialButton extends StatelessWidget
{
  DefaultMaterialButton({super.key, required this.text, required this.onTap ,
    this.width ,this.height,required this.radius,});

  final String text;
  final Function() onTap;
  double radius;
  double? width;
  double? height;
  double? fontSize;

  @override
  Widget build(BuildContext context)
  {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width??double.infinity,
        height: height??50,
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: fontSize??20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
