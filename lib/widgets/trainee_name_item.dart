import 'package:flutter/material.dart';

class TraineeNameItem extends StatelessWidget {
  var  nameController=TextEditingController();
  int ?memberNumber;
  TraineeNameItem({required this.nameController,required this.memberNumber});
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
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: TextFormField(
                controller: nameController,
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.normal),
                decoration :const InputDecoration(
                  hintText: 'أدخل الاسم هنا ',
                  hintStyle: TextStyle(color: Colors.black26,fontSize: 14)
                ) ,
              ),
            ),
          ),
        ));

  }


}

class TraineeNameItem2 extends StatelessWidget {
  var  nameController;
  int memberNumber;
  TraineeNameItem2({required this.nameController,required this.memberNumber});
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
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Text(nameController)
            ),
          ),
        ));

  }


}