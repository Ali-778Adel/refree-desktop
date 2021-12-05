import 'package:flutter/material.dart';

class TraineeAgeItem extends StatelessWidget {
  var  ageController=TextEditingController();
  int ?memberNumber;
  TraineeAgeItem({required this.ageController,required this.memberNumber});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide.lerp(
                    BorderSide.none,
                    const BorderSide(
                        color: Colors.tealAccent, style: BorderStyle.solid),
                    1)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextFormField(
              controller: ageController,
              textDirection: TextDirection.rtl,
              style:const TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.normal),
              decoration :const InputDecoration(
                  hintText: 'أدخل السن هنا ',
                  hintStyle: TextStyle(color: Colors.black26,fontSize: 12)
              ) ,
            ),
          ),
        ));
  }


}
