import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:refree1/cubit/questions_cubit.dart';
import 'package:refree1/cubit_states/questions_states.dart';
import 'package:refree1/screens/admin_screen.dart';
import 'package:refree1/widgets/checkbox_list_tile.dart';
import 'package:refree1/widgets/custom_appbar.dart';
import 'package:refree1/widgets/custom_buttons.dart';
import 'package:refree1/widgets/timer_widget.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: BlocBuilder<QuestionCubit, QuestionsStates>(
          builder: (context, state) {
            QuestionCubit questionCubit = QuestionCubit.get(context);
            return CustomAppBar2(
              centerWidget: Row(
                children: [
                  OtpTimer(),
                  const SizedBox(width: 20,),
                  Text(QuestionCubit.questionsList[QuestionCubit.x],style:const TextStyle(fontSize: 18,fontWeight: FontWeight.normal,color: Colors.black),)
                ],
              ),
              appBarActions: [
                CustomButtons(function: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AdminScreen()));
                }, buttonText: 'انتهى الاختبار   '),
                const SizedBox(
                  width: 20,
                ),
                CustomButtons(
                    function: () {
                      questionCubit.onNextQuestionBtnTapped(
                          checkBName: questionCubit.selectedCheckBoxName[0],
                          id: questionCubit.selectedCheckBox[0],);

                    },
                    buttonText: 'السؤال التالى '),
                const SizedBox(
                  width: 20,
                ),
              ],
            );
          },
        ),
        preferredSize: const Size(double.infinity, 60.00),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(60),
          child: Container(
            child: BlocBuilder<QuestionCubit, QuestionsStates>(
              builder: (context, state) {
                QuestionCubit cubit = QuestionCubit.get(context);
                return ListView.builder(
                    itemCount: 14,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return CheckBoxListTileWidget(
                        title: cubit.boxes['checkBoxList'][index]
                            ['checkBoxName'],
                        function: (bool? selected) {
                          cubit.onChecBoxChecked(
                              selected: selected,
                              id: cubit.boxes['checkBoxList'][index]
                                  ['checkBoxId'],
                              checkBoxName: cubit.boxes['checkBoxList'][index]
                                  ['checkBoxName']);
                        },
                        value: cubit.selectedCheckBox.contains(
                            cubit.boxes['checkBoxList'][index]['checkBoxId']),
                      );
                    });
              },
            ),
          ),
        ),
      ),
    );
  }
}
