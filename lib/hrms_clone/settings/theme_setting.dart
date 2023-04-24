import 'package:flutter/material.dart';
import 'package:hrms_clone/core/app_widgets.dart';
import '../../core/utils.dart';

class ThemeSetting extends StatefulWidget {
  const ThemeSetting({super.key});

  @override
  State<ThemeSetting> createState() => _ThemeSettingState();
}

class _ThemeSettingState extends State<ThemeSetting> {
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
              'Theme Settings',
              style: txtStyle(size: 18, weight: FontWeight.w600),
            ),
            Spacing().verticalSpace(context, 0.04),
            Row(
              children: const [
                Text('Website Name'),
                Text('*'),
              ],
            ),
            Spacing().verticalSpace(context, 0.018),
            TextField(
              enabled: false,
              controller:
                  TextEditingController(text: "Dreamguy's Technologies"),
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true),
            ),
            Spacing().verticalSpace(context, 0.04),
            const Text('Light Logo'),
            Spacing().verticalSpace(context, 0.01),
            Row(children: [
              ElevatedButton(
                  onPressed: () {}, child: const Text('Choose File')),
              Spacing().horizontalSpace(context, 0.01),
              const Text('No file choosen')
            ]),
            Spacing().verticalSpace(context, 0.01),
            const Text('Recommended image size is 40px x 40px'),
            Spacing().verticalSpace(context, 0.008),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/company_logo.png',
                  width: 50,
                ),
              ],
            ),
            Spacing().verticalSpace(context, 0.02),
            const Text('Favicon'),
            Spacing().verticalSpace(context, 0.01),
            Row(children: [
              ElevatedButton(
                  onPressed: () {}, child: const Text('Choose File')),
              Spacing().horizontalSpace(context, 0.01),
              const Text('No file choosen')
            ]),
            Spacing().verticalSpace(context, 0.01),
            const Text('Recommended image size is 40px x 40px'),
            Spacing().verticalSpace(context, 0.08),
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
                        'Save',
                        style: txtStyle(
                            size: 20,
                            color: Colors.white,
                            weight: FontWeight.w400),
                      )),
                ),
              ],
            ),
            Spacing().verticalSpace(context, 0.04),
          ],
        ),
      ],
    );
  }
}
