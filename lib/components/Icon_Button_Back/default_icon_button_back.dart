import 'package:flutter/material.dart';

class DefaultIconButtonBack extends StatelessWidget
{
  const DefaultIconButtonBack({super.key , required this.context});

  final BuildContext context;

  @override
  Widget build(BuildContext context)
  {
    return IconButton(
      onPressed: ()
      {
        Navigator.pop(context);
      },
      icon: const Icon(
        Icons.arrow_back_ios_outlined ,
        color: Colors.black,
        size: 30,
      ),
    );
  }
}
