import 'package:flutter/material.dart';

class DefaultTextFormField extends StatelessWidget
{
  DefaultTextFormField({super.key, required this.controller, required this.labelText,
    required this.hintText,required this.validate, required this.type,this.onTap,this.isPassword,
    this.color,this.onChange, this.onSubmit, this.prefix,this.suffix,this.suffixPressed,
  });

  final TextEditingController controller;
  final String labelText;
  final String hintText;
  IconData? prefix;
  Color? color;
  Function(String)? onChange;
  Function(String)? onSubmit;
  Function()? onTap;
  final String? Function(String?) validate;
  final TextInputType type;
  bool? isPassword;
  Function()? suffixPressed;
  IconData? suffix;

  @override
  Widget build(BuildContext context)
  {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          label: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              labelText,
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            color: Colors.grey[500],
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 14,),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          prefixIcon: Icon(
            prefix,
            color: color,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              suffix,
              color: color,
            ),
            onPressed: suffixPressed ,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          )
      ),
      obscureText: isPassword??false,
      onTap: onTap,
      keyboardType: type,
      onChanged: onChange,
      onFieldSubmitted: onSubmit,
      validator: (String? value)
      {
        return validate(value);
      },
    );
  }
}
