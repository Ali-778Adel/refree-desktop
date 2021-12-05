import 'package:flutter/material.dart';
import 'package:refree1/components/navigation.dart';
import 'package:refree1/widgets/custom_drawer.dart';

class CustomAppBar extends StatelessWidget {
  String? title;
  CustomAppBar({this.title});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        title!,
        style: const TextStyle(color: Colors.black),
      ),
      centerTitle: true,
//      leading: Container(color: Colors.teal,child: IconButton(icon: CustomDrawer(),onPressed: (){CustomDrawer();},)),
    );
  }
}

class CustomAppBar2 extends StatelessWidget {
  Widget? centerWidget;
  List<Widget>?appBarActions;
  Widget ?appBarLeading;
  CustomAppBar2({this.centerWidget,this.appBarActions});
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        child: AppBar(
          title:centerWidget ,
          actions: appBarActions,
          leading:appBarLeading ,
          centerTitle: true,
        )
        , preferredSize: const Size(double.infinity, 60.0));
  }
}
