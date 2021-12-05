import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:refree1/cubit_states/team_detection_states.dart';
import 'package:refree1/screens/questions_screen.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite_common/sqlite_api.dart';

class TeamDetectionCubit extends Cubit<TeamDetectionStates> {
  TeamDetectionCubit() : super(TInitState());
  static TeamDetectionCubit get(context) => BlocProvider.of(context);
  List<TextEditingController> nameController = [
    for (int i = 1; i < 8; i++) TextEditingController()
  ];
  List<TextEditingController> codeController = [
    for (int i = 1; i < 8; i++) TextEditingController()
  ];
  List<TextEditingController> ageController = [
    for (int i = 1; i < 8; i++) TextEditingController()
  ];
  List<int> c = [for (int i = 0; i < 8; i++) i];
  int x = 0;
  void onNextButtonPressed(BuildContext context, int index) async {
    insert(
        index: index,
        data: data,
        names: nameController,
        codeNumbers: codeController,
        ages: ageController);
    getDataFromDatabase(data);
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const QuestionsScreen()));
  }

  var database = databaseFactoryFfi;
  Database? data;
  Future<dynamic> createDatabase() async {
    print(
        'لا حول ولا قوة الا بالله العلى العظيم استغفر الله واتوب اليه من كل ذنب عظيم لا حول ولا قوة الا بالله الله اكبر   ');
    data = await database.openDatabase('refree',
        options: OpenDatabaseOptions(
            version: 1,
            onCreate: (data, int version) async {
              await data.execute(('''
  CREATE TABLE trainee_squad  (
      id INTEGER PRIMARY KEY,
      name TEXT ARRAY,
      codeNumber Text,
      age Text)
      ''')).then((value) {
                emit(TCreateDatabaseState());
                print('database created successfully ');
              }).catchError((error) {
                print('error on creating database ${error.toString()}');
              });
            },
            onOpen: (data) async {
              print(data.runtimeType);
//              await insertIntoDatabase(data: data);
              getDataFromDatabase(data);
              print('database opened successfully ');
              emit(TOpenDatabaseState());
            }));
  }

  Future<dynamic> insertIntoDatabase(
      {int? index,
      Database? data,
      List<TextEditingController>? names,
      List<TextEditingController>? codeNumbers,
      List<TextEditingController>? ages}) async {
    await data!.transaction((txn) {
      return txn
          .rawInsert('INSERT INTO trainee_squad (name,codeNumber,age) VALUES'
              '("${(names!.map((TextEditingController element) {
        return element.text;
      }))}",'
              '"${(codeNumbers!.map((element) {
        return element.text;
      }))}",'
              '"${(ages!.map((element) {
        return element.text;
      }))}")')
          .then((value) {
        emit(TInsertIntoDatabaseState());
        print('$value added succeefully');
      }).catchError((error) => print('error in insert${error.toString()}'));
    });
  }

  List<Map<String, dynamic>> squaddb = [];
  void getDataFromDatabase(data) async {
    for(int i =0;i<7;i++){
    await data.rawQuery('SELECT * FROM trainee_squad').then((value) {
      squaddb = value;
      print(squaddb.toString());
      print('asddsd');
      print((squaddb[2][['name'][0]]));
      emit(TGetFromDatabaseState());
    }).catchError((error) {
      print('error on get ${error.toString()}');
    });
  }}

  void clearDatabase() async {
    await data!.delete('trainee_squad').then((value) {
      print('$value deleted Successfully');
    }).catchError((ERROR) {
      print('error on deleting table${ERROR.toString()}');
    });
  }

  Future<dynamic> insert(
      {int? index,
      Database? data,
      List<TextEditingController>? names,
      List<TextEditingController>? codeNumbers,
      List<TextEditingController>? ages}) async {
    for (int i = 0; i < 7; i++) {
      await data!.transaction((txn) {
        return txn.insert('trainee_squad', {
          'name': (names![i]).text,
          'codeNumber': (codeNumbers![i]).text,
          'age': (ages![i]).text
        });
      }).then((value) {
        print('$value added sucess');
      }).catchError((error, trace) {
        print('error in isert method ${error.toString()}');
        print('trace error in isert method ${trace.toString()}');
      });
    }
  }
}
