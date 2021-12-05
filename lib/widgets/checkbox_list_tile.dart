import 'package:flutter/material.dart';

class CheckBoxListTileWidget extends StatelessWidget {
//  const CheckBoxListTile({Key? key}) : super(key: key);
  String? title;
  Function(bool?value)? function;
  bool? value;
  int?index;
  CheckBoxListTileWidget({Key? key, this.title, this.function, this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Center(
            child: CheckboxListTile(
              title: Text(
                title!,
                style: const TextStyle(
                    color: Colors.teal,
                    fontSize: 26,
                    fontWeight: FontWeight.normal),
              ),
              onChanged: function,
              value: value,
              checkColor: Colors.white,
              activeColor: Colors.teal,
//              autofocus: value!,
            ),
          ),
        ));
  }
}
