import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:refree1/cubit/homepage_cubit.dart';
import 'package:refree1/cubit/team_detection_cubit.dart';
import 'package:refree1/cubit_states/homepage_states.dart';
import 'package:refree1/widgets/trainee_name_item.dart';
import 'package:refree1/widgets/trainee_number.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar:   AppBar(
  title: BlocBuilder<HomePageCubit, HomePageStates>(
    builder: (context, state) {
return Text(context.read<HomePageCubit>().title!);
},
),
    ),
  body:  Directionality(
    textDirection: TextDirection.rtl,
    child: Padding(
      padding:const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          children:  [
           const Padding(
              padding:  EdgeInsets.all(20.0),
              child: Text('اجابات الفريق ',style:TextStyle(fontSize: 28,fontWeight: FontWeight.normal,color: Colors.teal),),
            ),
            Table(
              border: TableBorder.symmetric(
//                    outside: BorderSide.lerp(BorderSide(color: Colors.tealAccent),
//                        BorderSide(color: Colors.tealAccent), 2.0),
                  inside: BorderSide.lerp(
                      BorderSide.none,
                      const BorderSide(
                          color: Colors.tealAccent, width: .5),
                      8)),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              columnWidths: const {
                0: FixedColumnWidth(140),
                2: FixedColumnWidth(140),
                3: FixedColumnWidth(140),
              },
//                  textDirection: TextDirection.rtl,
              children: [
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
                TableRow(
                  children: [
                    TraneeNumberItem(
                      traineeNumber: 1,
                    ),
                    TraineeNameItem2(
                      nameController:(context.read<TeamDetectionCubit>().squaddb[0][['name'][0]]),
                      memberNumber: 1,
                    ),
                    TraineeNameItem2(
                      nameController:(context.read<TeamDetectionCubit>().squaddb[0]['codeNumber']),
                      memberNumber: 1,
                    ),
                    TraineeNameItem2(
                      nameController:(context.read<TeamDetectionCubit>().squaddb[0]['age']),
                      memberNumber: 1,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TraneeNumberItem(
                      traineeNumber: 2,
                    ),
                    TraineeNameItem2(
                      nameController:(context.read<TeamDetectionCubit>().squaddb[1][['name'][0]]),
                      memberNumber: 2,
                    ),
                    TraineeNameItem2(
                      nameController:(context.read<TeamDetectionCubit>().squaddb[1]['codeNumber']),
                      memberNumber: 2,
                    ),
                    TraineeNameItem2(
                      nameController:(context.read<TeamDetectionCubit>().squaddb[1]['age']),
                      memberNumber: 2,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TraneeNumberItem(
                      traineeNumber: 3,
                    ),
                    TraineeNameItem2(
                      nameController:(context.read<TeamDetectionCubit>().squaddb[2][['name'][0]]),
                      memberNumber: 3,
                    ),
                    TraineeNameItem2(
                      nameController:(context.read<TeamDetectionCubit>().squaddb[2]['codeNumber']),
                      memberNumber: 3,
                    ),
                    TraineeNameItem2(
                      nameController:(context.read<TeamDetectionCubit>().squaddb[2]['age']),
                      memberNumber: 3,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TraneeNumberItem(
                      traineeNumber: 4,
                    ),
                    TraineeNameItem2(
                      nameController:(context.read<TeamDetectionCubit>().squaddb[3][['name'][0]]),
                      memberNumber: 4,
                    ),
                    TraineeNameItem2(
                      nameController:(context.read<TeamDetectionCubit>().squaddb[3]['codeNumber']),
                      memberNumber: 4,
                    ),
                    TraineeNameItem2(
                      nameController:(context.read<TeamDetectionCubit>().squaddb[3]['age']),
                      memberNumber: 4,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TraneeNumberItem(
                      traineeNumber: 5,
                    ),
                    TraineeNameItem2(
                      nameController:(context.read<TeamDetectionCubit>().squaddb[4][['name'][0]]),
                      memberNumber: 5,
                    ),
                    TraineeNameItem2(
                      nameController:(context.read<TeamDetectionCubit>().squaddb[4]['codeNumber']),
                      memberNumber: 5,
                    ),
                    TraineeNameItem2(
                      nameController:(context.read<TeamDetectionCubit>().squaddb[4]['age']),
                      memberNumber: 5,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TraneeNumberItem(
                      traineeNumber: 6,
                    ),
                    TraineeNameItem2(
                      nameController:(context.read<TeamDetectionCubit>().squaddb[5][['name'][0]]),
                      memberNumber: 6,
                    ),
                    TraineeNameItem2(
                      nameController:(context.read<TeamDetectionCubit>().squaddb[5]['codeNumber']),
                      memberNumber: 6,
                    ),
                    TraineeNameItem2(
                      nameController:(context.read<TeamDetectionCubit>().squaddb[5]['age']),
                      memberNumber: 6,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TraneeNumberItem(
                      traineeNumber: 7,
                    ),
                    TraineeNameItem2(
                      nameController:(context.read<TeamDetectionCubit>().squaddb[6][['name'][0]]),
                      memberNumber: 7,
                    ),
                    TraineeNameItem2(
                      nameController:(context.read<TeamDetectionCubit>().squaddb[6]['codeNumber']),
                      memberNumber: 7,
                    ),
                    TraineeNameItem2(
                      nameController:(context.read<TeamDetectionCubit>().squaddb[6]['age']),
                      memberNumber: 7,
                    ),
                  ],
                ),


                ]),
              ],
            ),


      ))),




);
  }
}
