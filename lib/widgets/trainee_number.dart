import 'package:flutter/material.dart';

class TraneeNumberItem extends StatelessWidget {
  int ?traineeNumber ;
  TraneeNumberItem({required this.traineeNumber });
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide.lerp(BorderSide.none, const BorderSide(color: Colors.teal,
          style: BorderStyle.solid
          ), 1)),


        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(child: Text(' ${traineeNumber} -')),
        ),

      ),
    );
  }
}
