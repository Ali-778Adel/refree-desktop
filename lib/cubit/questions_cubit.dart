import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:refree1/cubit_states/questions_states.dart';
import 'package:refree1/sharedprefrences/sharedpref.dart';

class QuestionCubit extends Cubit<QuestionsStates> {
  QuestionCubit() : super(QIntitState());

  static QuestionCubit get(context) => BlocProvider.of(context);

 static List<String> questionsList = [
    ' السؤال الاول  '  ,
    'السؤال الثانى   ',
    'السؤال الثانى   ',
    'السؤال الثالث   ',
    'السؤال الرابع   ',
    'السؤال الخامس   ',
    'السؤال السادس   ',
    'السؤال السابع   ',
    'السؤال الثامن   ',
    'السؤال التاسع   ',
    'السؤال العاشر  ',
    'السؤال الحادي عشر  ',
    'السؤال الثاني عشر  ',
    'السؤال الثالث عشر  ',
    'السؤال الرايع عشر  ',
    'السؤال الخامس عشر  ',
    'السؤال السادس عشر  ',
    'السؤال السابع عشر  ',
    'السؤال الثامن عشر  ',
    'السؤال التاسع عشر  ',
    'السؤال العشرين   ',
    'السؤال الحادى والعشرون   ',
    'السؤال الثانى والعشرون   ',
    'السؤال الثالث والعشرون   ',
    'السؤال الرابع والعشرون   ',
    'السؤال الخامس والعشرون   ',

  ];
  Map<String,dynamic>boxes={
    'checkBoxList':[
      {'checkBoxId':1,'checkBoxName':'ضربة حرة مباشرة'},
      {'checkBoxId':2,'checkBoxName':'ضربة حرة مباشرة + كارت اصفر'},
      {'checkBoxId':3,'checkBoxName':'ضربة حرة مباشرة +كارت احمر'},
      {'checkBoxId':4,'checkBoxName':'ضربة حرة غير مباشرة '},
      {'checkBoxId':5,'checkBoxName':'ضربة ركنية '},
      {'checkBoxId':6,'checkBoxName':'ضربة جزاء'},
      {'checkBoxId':7,'checkBoxName':'ضربة جزاء +كارت اصفر'},
      {'checkBoxId':8,'checkBoxName':'ضربة جزاء + كارت احمر'},
      {'checkBoxId':9,'checkBoxName':'رمية تماس'},
      {'checkBoxId':10,'checkBoxName':'تسلل'},
      {'checkBoxId':11,'checkBoxName':'كارت اصفر'},
      {'checkBoxId':12,'checkBoxName':'كارت احمر'},
      {'checkBoxId':13,'checkBoxName':'هدف صحيح'},
      {'checkBoxId':14,'checkBoxName':'هدف غير صحيح'},

    ]};
List selectedCheckBox=[];
List selectedCheckBoxName=[];
  void onChecBoxChecked({bool ?selected,int?id,String ?checkBoxName})async{
    if (selected==true){
      selectedCheckBox.add(id);
      selectedCheckBoxName.add(checkBoxName);
      selectedCheckBox.removeWhere((element) => element!=id);
      print(selectedCheckBox.toString());
      print(selectedCheckBox.length);
      print(selectedCheckBoxName.toString());
      selectedCheckBoxName.removeWhere((element) => element!=checkBoxName);
      print('id added successfully');
      emit(QtCheckbox());
    }else{
      selectedCheckBox.remove(id);
      selectedCheckBoxName.remove(checkBoxName);
      print('id removed successfully');
      emit(QfCheckbox());
    }
  }
 static int x=0;
//  String title ='${questionsList[x]} ';
  void onNextQuestionBtnTapped({String? checkBName,int ?id, })async{

   await SharedPref_Helper.setDataToSharePref(key: 'checkBName', value: checkBName).then((value) {
     print(value);
     print (SharedPref_Helper.getDataFromShareprefrences(key: 'checkBName'));
     selectedCheckBox.remove(id);
     emit(onNextQButtonTappedState());

   }).catchError((error){
     print ('error error${error.toString()}');
   });

     x++;




  }

}
