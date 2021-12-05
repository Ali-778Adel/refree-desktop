import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:refree1/cubit/homepage_cubit.dart';
import 'package:refree1/cubit_states/homepage_states.dart';
import 'package:refree1/widgets/custom_appbar.dart';
import 'package:refree1/widgets/custom_drawer.dart';

class ChooseTeam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:const Size(double.infinity,60),
        child: CustomAppBar(title: 'اختر فريقك ',) ,
      ),
      drawer: CustomDrawer(),
      body: Container(
        decoration: const BoxDecoration(),
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlocBuilder<HomePageCubit, HomePageStates>(
                      builder: (context, state) {
                        return TextButton(
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<
                                      EdgeInsetsDirectional>(
                                  const EdgeInsetsDirectional.only(
                                      start: 20, end: 20,bottom: 20)),
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.teal),
                            ),
                            onPressed: () {
                              context
                                  .read<HomePageCubit>()
                                  .on1stTeamSelected(context);
                            },
                            child: const Text(
                              'الفريق الاول ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 42,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ));
                      },
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 62,
                      color: Colors.teal,
                    ),
                    Container(
                      child: Image.asset(
                        'assests/authentications_images/login2.jpg',
                        fit: BoxFit.fill,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
                child: Container(
                  width: double.infinity,
                  color: Colors.teal,
                  child: const Center(
                    child: Text(
                      'من فضلك اختر فريقك',
                      style: TextStyle(
                        fontFamily: 'ArefRuqaa',
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlocBuilder<HomePageCubit, HomePageStates>(
                      builder: (context, state) {
                        return TextButton(
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<
                                      EdgeInsetsDirectional>(
                                  const EdgeInsetsDirectional.only(
                                      start: 20, end: 20,bottom: 20)),
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.teal),
                            ),
                            onPressed: () {
                              print ('اتم ادخول الفريق الثانى ');
                              context
                                  .read<HomePageCubit>()
                                  .on2ndTeamSelected(context);


                            },
                            child: const Text(
                              'الفريق الثانى ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 42,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ));
                      },
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 62,
                      color: Colors.teal,
                    ),
                    Container(
                      child: Image.asset(
                        'assests/authentications_images/login2.jpg',
                        fit: BoxFit.fill,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
