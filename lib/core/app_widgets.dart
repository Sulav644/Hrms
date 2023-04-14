import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrms_clone/core/utils.dart';
import 'package:hrms_clone/hrms_clone/domain/bloc/show_menu_cubit.dart';

class AppWidgets {
  AppBar appBar(BuildContext context) => AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.orange),
        flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 255, 153, 69),
            Color.fromARGB(255, 240, 52, 114)
          ],
        ))),
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Image.asset(
            'assets/images/logo.png',
            width: 40,
          ),
        ),
        centerTitle: true,
        leading: Builder(
          builder: (context) {
            return iconButton(
                Icons.menu, () => Scaffold.of(context).openDrawer());
          },
        ),
        actions: [
          iconButton(Icons.more_vert,
              () => context.read<ShowMenuCubit>().toggleState())
        ],
      );
  Widget appDrawer(BuildContext context, List<Widget> children) => Container(
      width: Sizes().ratioWithScrWidth(context, 0.65),
      child: Drawer(
        backgroundColor: Color.fromARGB(255, 2, 27, 48),
        child: DefaultTextStyle(
            style: TextStyle(color: Colors.white),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Sizes().ratioWithScrWidth(context, 0.04)),
              child: ListView(children: children),
            )),
      ));
  Widget iconButton(IconData icon, VoidCallback onPressed) => IconButton(
      onPressed: () => onPressed(),
      icon: Icon(
        icon,
        size: AppConstants().appbarIconSize,
      ));
}
