import 'package:flutter/material.dart';
import 'package:refree1/widgets/member_age_item.dart';
import 'package:refree1/widgets/member_code_item.dart';
import 'package:refree1/widgets/trainee_name_item.dart';
import 'package:refree1/widgets/trainee_number.dart';

class Test extends StatelessWidget {
 var namecontroller1 =TextEditingController();
 var namecontroller2 =TextEditingController();
 var namecontroller3 =TextEditingController();
 var namecontroller4 =TextEditingController();
 var namecontroller5 =TextEditingController();
 var namecontroller6 =TextEditingController();
 var namecontroller7 =TextEditingController();

  double iconSize = 40;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ),
        body: Padding(
          padding: const EdgeInsets.all(60.0),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Center(
                child: SingleChildScrollView(
                  physics:const BouncingScrollPhysics(),
                  child: Column(children: <Widget>[
              Container(
                  margin: const EdgeInsets.all(10),
                  child: Table(
                    border: TableBorder.symmetric(
//                    outside: BorderSide.lerp(BorderSide(color: Colors.tealAccent),
//                        BorderSide(color: Colors.tealAccent), 2.0),
                        inside: BorderSide.lerp(
                            BorderSide.none,
                            const BorderSide(color: Colors.tealAccent, width:.5),
                            8)),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    columnWidths: const {
                      0: FixedColumnWidth(140),
                      2: FixedColumnWidth(140),
                      3: FixedColumnWidth(140),
                    },
//                  textDirection: TextDirection.rtl,
                    children:   [
                       const TableRow(
                          decoration: BoxDecoration(
                            color: Colors.tealAccent,

                          ),
                          children: [
                            Center(
                                child: SizedBox(
                                    child: Text(
                              'رقم المتدرب ',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ))),
                            Center(
                                child: Text(
                              'اسم المتدرب',
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.bold),
                            )),
                            Center(
                                child: Text(
                              'الكود',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )),
                            Center(
                                child: Text(
                              'السن  ',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )),
                          ]),

                        TableRow(children: [



                          TraneeNumberItem(traineeNumber: 1,),
                          TraineeNameItem(nameController: namecontroller1,memberNumber: 1,),
                          TraineeCodeItem(codeController: namecontroller1,memberNumber: 1,),
                          TraineeAgeItem(ageController: namecontroller1,memberNumber: 1,),
                           ],


                      ),
                      TableRow(children: [
                        TraneeNumberItem(traineeNumber: 2,),
                        TraineeNameItem(nameController: namecontroller2,memberNumber: 2,),
                        TraineeCodeItem(codeController: namecontroller1,memberNumber: 1,),
                        TraineeAgeItem(ageController: namecontroller1,memberNumber: 1,),
                      ]),
                      TableRow(children: [
                        TraneeNumberItem(traineeNumber: 3,),
                        TraineeNameItem(nameController: namecontroller3,memberNumber: 3,),
                        TraineeCodeItem(codeController: namecontroller1,memberNumber: 1,),
                        TraineeAgeItem(ageController: namecontroller1,memberNumber: 1,),
                      ]),
                      TableRow(children: [
                        TraneeNumberItem(traineeNumber: 4,),
                        TraineeNameItem(nameController: namecontroller4,memberNumber: 4,),
                        TraineeCodeItem(codeController: namecontroller1,memberNumber: 1,),
                        TraineeAgeItem(ageController: namecontroller1,memberNumber: 1,),
                      ]),
                      TableRow(children: [
                        TraneeNumberItem(traineeNumber: 5,),
                        TraineeNameItem(nameController: namecontroller5,memberNumber: 5,),
                        TraineeCodeItem(codeController: namecontroller1,memberNumber: 1,),
                        TraineeAgeItem(ageController: namecontroller1,memberNumber: 1,),
                      ]),
                      TableRow(children: [
                        TraneeNumberItem(traineeNumber: 6,),
                        TraineeNameItem(nameController: namecontroller6,memberNumber: 6,),
                        TraineeCodeItem(codeController: namecontroller1,memberNumber: 1,),
                        TraineeAgeItem(ageController: namecontroller1,memberNumber: 1,),
                      ]),
                      TableRow(children: [
                        TraneeNumberItem(traineeNumber: 7,),
                        TraineeNameItem(nameController: namecontroller7,memberNumber: 7,),
                        TraineeCodeItem(codeController: namecontroller1,memberNumber: 1,),
                        TraineeAgeItem(ageController: namecontroller1,memberNumber: 1,),
                      ]),
                    ],
                  ),
              ),
            ]),
                )),
          ),
        ));
  }
}
