import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  Function()? function;
  String? buttonText;
  CustomButtons({this.function, this.buttonText});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: function,
      child: Text(
        buttonText!,
        style:const TextStyle(fontSize: 18,color: Colors.black),
      ),
    );
  }

}
