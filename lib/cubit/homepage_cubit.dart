import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:refree1/components/navigation.dart';
import 'package:refree1/cubit_states/homepage_states.dart';
import 'package:refree1/screens/team_detection_screen.dart';
import 'package:sqflite_common/sqlite_api.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class HomePageCubit extends Cubit<HomePageStates> {
  HomePageCubit() : super(HomeInitState());
  static HomePageCubit get(context) => BlocProvider.of(context);

  List<String> titles = ['الفريق الاول ', 'الفريق الثانى '];
  String? title;
  void on1stTeamSelected(BuildContext context) {
    navigationWithBackRoute(buildContext: context, widget: TeamDetection());
    title = titles[0];
    emit(On1stTeamSelectedState());
  }

  void on2ndTeamSelected(BuildContext context) {
    navigationWithBackRoute(buildContext: context, widget: TeamDetection());
    title = titles[1];
    emit(On2ndTeamSelectedState());
  }




}
