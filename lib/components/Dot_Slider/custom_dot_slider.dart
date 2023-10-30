import 'package:flutter/material.dart';

class CustomDotSlider extends StatelessWidget
{
  const CustomDotSlider({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children:
      [
        ...List.generate(
          3, (index) =>  AnimatedContainer(
          duration: const Duration(
            milliseconds: 700,
          ),
          margin: const EdgeInsetsDirectional.only(
            start: 10,
          ),
          height: 8,
          width: 25,
          decoration: BoxDecoration(
            color: Colors.teal,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        ),
      ],
    );
  }
}
