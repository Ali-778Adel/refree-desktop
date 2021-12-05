import 'package:flutter/material.dart';

class TraineeCodeItem extends StatelessWidget {
  var  codeController=TextEditingController();
  int ?memberNumber;
  TraineeCodeItem({required this.codeController,required this.memberNumber});
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
              controller: codeController,
              textDirection: TextDirection.rtl,
              style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.normal),
              decoration :const InputDecoration(
                  hintText: 'أدخل الكود هنا ',
                  hintStyle: TextStyle(color: Colors.black26,fontSize: 12)
              ) ,
            ),
          ),
        ));
  }


}
