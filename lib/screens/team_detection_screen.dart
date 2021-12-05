import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:refree1/cubit/homepage_cubit.dart';
import 'package:refree1/cubit/team_detection_cubit.dart';
import 'package:refree1/cubit_states/homepage_states.dart';
import 'package:refree1/widgets/member_age_item.dart';
import 'package:refree1/widgets/member_code_item.dart';
import 'package:refree1/widgets/trainee_name_item.dart';
import 'package:refree1/widgets/trainee_number.dart';

class TeamDetection extends StatelessWidget {


  double iconSize = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: BlocBuilder<HomePageCubit, HomePageStates>(
            builder: (context, state) {
              return Text(context.read<HomePageCubit>().title!);
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(60.0),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Center(
                child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Table(
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
                          TraineeNameItem(
                            nameController:context.read<TeamDetectionCubit>().nameController[0],
                            memberNumber: 1,
                          ),
                          TraineeCodeItem(
                            codeController: context.read<TeamDetectionCubit>().codeController[0],
                            memberNumber: 1,
                          ),
                          TraineeAgeItem(
                            ageController: context.read<TeamDetectionCubit>().ageController[0],
                            memberNumber: 1,
                          ),
                        ],
                      ),
                      TableRow(children: [
                        TraneeNumberItem(
                          traineeNumber: 2,
                        ),
                        TraineeNameItem(
                          nameController: context.read<TeamDetectionCubit>().nameController[1],
                          memberNumber: 2,
                        ),
                        TraineeCodeItem(
                          codeController: context.read<TeamDetectionCubit>().codeController[1],
                          memberNumber: 2,
                        ),
                        TraineeAgeItem(
                          ageController: context.read<TeamDetectionCubit>().ageController[1],
                          memberNumber: 2,
                        ),
                      ]),
                      TableRow(children: [
                        TraneeNumberItem(
                          traineeNumber: 3,
                        ),
                        TraineeNameItem(
                          nameController: context.read<TeamDetectionCubit>().nameController[2],
                          memberNumber: 3,
                        ),
                        TraineeCodeItem(
                          codeController: context.read<TeamDetectionCubit>().codeController[2],
                          memberNumber: 3,
                        ),
                        TraineeAgeItem(
                          ageController: context.read<TeamDetectionCubit>().ageController[2],
                          memberNumber: 3,
                        ),
                      ]),
                      TableRow(children: [
                        TraneeNumberItem(
                          traineeNumber: 3,
                        ),
                        TraineeNameItem(
                          nameController: context.read<TeamDetectionCubit>().nameController[3],
                          memberNumber: 3,
                        ),
                        TraineeCodeItem(
                          codeController: context.read<TeamDetectionCubit>().codeController[3],
                          memberNumber: 3,
                        ),
                        TraineeAgeItem(
                          ageController: context.read<TeamDetectionCubit>().ageController[3],
                          memberNumber: 3,
                        ),
                      ]),
                      TableRow(children: [
                        TraneeNumberItem(
                          traineeNumber: 4,
                        ),
                        TraineeNameItem(
                          nameController: context.read<TeamDetectionCubit>().nameController[4],
                          memberNumber: 4,
                        ),
                        TraineeCodeItem(
                          codeController: context.read<TeamDetectionCubit>().codeController[4],
                          memberNumber: 4,
                        ),
                        TraineeAgeItem(
                          ageController: context.read<TeamDetectionCubit>().ageController[4],
                          memberNumber: 4,
                        ),
                      ]),
                      TableRow(children: [
                        TraneeNumberItem(
                          traineeNumber: 5,
                        ),
                        TraineeNameItem(
                          nameController: context.read<TeamDetectionCubit>().nameController[5],
                          memberNumber: 5,
                        ),
                        TraineeCodeItem(
                          codeController: context.read<TeamDetectionCubit>().codeController[5],
                          memberNumber: 5,
                        ),
                        TraineeAgeItem(
                          ageController: context.read<TeamDetectionCubit>().ageController[5],
                          memberNumber: 5,
                        ),
                      ]),
                      TableRow(children: [
                        TraneeNumberItem(
                          traineeNumber: 6,
                        ),
                        TraineeNameItem(
                          nameController: context.read<TeamDetectionCubit>().nameController[6],
                          memberNumber: 6,
                        ),
                        TraineeCodeItem(
                          codeController: context.read<TeamDetectionCubit>().codeController[6],
                          memberNumber: 6,
                        ),
                        TraineeAgeItem(
                          ageController: context.read<TeamDetectionCubit>().ageController[6],
                          memberNumber: 6,
                        ),
                      ]),
                    ],
                  ),
                ),
                Row(
                  children: [
                    BlocBuilder<HomePageCubit, HomePageStates>(
                      builder: (context, state) {
                        return ElevatedButton(
                          onPressed: () async {
                            print('OK ');
                            context.read<TeamDetectionCubit>().createDatabase();
                            context.read<TeamDetectionCubit>().onNextButtonPressed(context,1);
                          },
                          child: const Text(
                            'التالى ',
                            style: TextStyle(fontSize: 18),
                          ),
                        );
                      },
                    ),
                    const Spacer(),
                    BlocBuilder<HomePageCubit, HomePageStates>(
                      builder: (context, state) {
                        return ElevatedButton(
                          onPressed: () async {
                            print('OK ');
                            context.read<TeamDetectionCubit>().clearDatabase();
                          },
                          child: const Text(
                            'clear database ',
                            style: TextStyle(fontSize: 18),
                          ),
                        );
                      },
                    ),

                  ],
                )
              ]),
            )),
          ),
        ));
  }
}
