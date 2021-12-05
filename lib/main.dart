import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:refree1/cubit/homepage_cubit.dart';
import 'package:refree1/cubit/questions_cubit.dart';
import 'package:refree1/cubit/team_detection_cubit.dart';
import 'package:refree1/screens/choosing_team_screen.dart';
import 'package:refree1/screens/login_screen.dart';
import 'package:refree1/screens/questions_screen.dart';
import 'package:refree1/sharedprefrences/sharedpref.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'app_const_ui/AppThemes.dart';
import 'constats/Bloc_Observer.dart';
import 'cubit/AthenticationCubit.dart';
import 'network/authentication_dio_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AuthenticationDioHelper.initAuthDio();
  Bloc.observer = MyBlocObserver();
  await SharedPref_Helper.initSharedPref();
  bool token = await SharedPref_Helper.getDataFromSharepref(key: 'token');
  sqfliteFfiInit();
  runApp(MyApp(
    token: token,
  ));
}

class MyApp extends StatelessWidget {
  final bool? token;
  const MyApp({Key? key, this.token}) : super(key: key);
  Widget home() {
    if (token!) {
      return ChooseTeam();
    } else {
      return LoginScreen();
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AuthenticationCubit()),
          BlocProvider(create: (context) => HomePageCubit()),
          BlocProvider(create: (context) => TeamDetectionCubit()..createDatabase()),
          BlocProvider(create: (context) => QuestionCubit()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          home: home(),
        ));
  }
}
