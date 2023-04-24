import 'package:flutter/material.dart';
import 'package:hrms_clone/core/app_widgets.dart';
import '../../core/utils.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool showMenuStatus = false;

  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return AppWidgets().settingScaffold(
      context: context,
      showMenuStatus: showMenuStatus,
      controller: controller,
      onClick: () {},
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacing().verticalSpace(context, 0.02),
            Text(
              'Change Password',
              style: txtStyle(size: 18, weight: FontWeight.w600),
            ),
            Spacing().verticalSpace(context, 0.04),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'they matched',
                      style: txtStyle(size: 14, weight: FontWeight.w400),
                    ),
                    Spacing().verticalSpace(context, 0.013),
                    Text(
                      'Current password',
                      style: txtStyle(size: 14, weight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
            Spacing().verticalSpace(context, 0.02),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 133, 130, 130))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 133, 130, 130))),
                  fillColor: Colors.white,
                  filled: true),
            ),
            Spacing().verticalSpace(context, 0.026),
            Row(
              children: [
                Text(
                  'New password',
                  style: txtStyle(size: 14, weight: FontWeight.w400),
                ),
              ],
            ),
            Spacing().verticalSpace(context, 0.02),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 133, 130, 130))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 133, 130, 130))),
                  fillColor: Colors.white,
                  filled: true),
            ),
            Spacing().verticalSpace(context, 0.026),
            Row(
              children: [
                Text(
                  'Confirm password',
                  style: txtStyle(size: 14, weight: FontWeight.w400),
                ),
              ],
            ),
            Spacing().verticalSpace(context, 0.02),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 133, 130, 130))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 133, 130, 130))),
                  fillColor: Colors.white,
                  filled: true),
            ),
            Spacing().verticalSpace(context, 0.06),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: Sizes().ratioWithScrWidth(context, 0.6),
                  height: Sizes().ratioWithScrHeight(context, 0.06),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.orange),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Update Password',
                        style: txtStyle(
                            size: 20,
                            color: Colors.white,
                            weight: FontWeight.w400),
                      )),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
