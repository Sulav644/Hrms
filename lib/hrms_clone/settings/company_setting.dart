import 'package:flutter/material.dart';
import 'package:hrms_clone/core/app_widgets.dart';
import '../../core/utils.dart';

class CompanySetting extends StatefulWidget {
  const CompanySetting({super.key});

  @override
  State<CompanySetting> createState() => _CompanySettingState();
}

class _CompanySettingState extends State<CompanySetting> {
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
              'Company Settings',
              style: txtStyle(size: 18, weight: FontWeight.w600),
            ),
            Spacing().verticalSpace(context, 0.04),
            Row(
              children: const [
                Text('Company Name'),
                Text('*'),
              ],
            ),
            Spacing().verticalSpace(context, 0.02),
            TextField(
              controller:
                  TextEditingController(text: "Dreamguy's Technologies"),
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            Spacing().verticalSpace(context, 0.03),
            const Text('Contact Person'),
            Spacing().verticalSpace(context, 0.02),
            TextField(
              controller: TextEditingController(text: "Daniel Porter"),
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            Spacing().verticalSpace(context, 0.03),
            const Text('Address'),
            Spacing().verticalSpace(context, 0.02),
            TextField(
              controller: TextEditingController(
                  text: "3864 Quiet Valley Lane,Sherman Oaks, CA, 91403"),
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            Spacing().verticalSpace(context, 0.03),
            const Text('Country'),
            Spacing().verticalSpace(context, 0.02),
            TextField(
              controller: TextEditingController(text: "USA"),
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            Spacing().verticalSpace(context, 0.03),
            const Text('City'),
            Spacing().verticalSpace(context, 0.02),
            TextField(
              controller: TextEditingController(text: "Sherman Oaks"),
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            Spacing().verticalSpace(context, 0.03),
            const Text('State/Province'),
            Spacing().verticalSpace(context, 0.02),
            TextField(
              controller: TextEditingController(text: "California"),
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            Spacing().verticalSpace(context, 0.03),
            const Text('Postal Code'),
            Spacing().verticalSpace(context, 0.02),
            TextField(
              controller: TextEditingController(text: "91403"),
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            Spacing().verticalSpace(context, 0.03),
            const Text('Email'),
            Spacing().verticalSpace(context, 0.02),
            TextField(
              controller:
                  TextEditingController(text: "danielporter@example.com"),
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            Spacing().verticalSpace(context, 0.03),
            const Text('Phone Number'),
            Spacing().verticalSpace(context, 0.02),
            TextField(
              controller: TextEditingController(text: "818-635-5579"),
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            Spacing().verticalSpace(context, 0.03),
            const Text('Mobile Number'),
            Spacing().verticalSpace(context, 0.02),
            TextField(
              controller: TextEditingController(text: "818-635-5579"),
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            Spacing().verticalSpace(context, 0.03),
            const Text('Fax'),
            Spacing().verticalSpace(context, 0.02),
            TextField(
              controller: TextEditingController(text: "818-978-7102"),
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            Spacing().verticalSpace(context, 0.03),
            const Text('Website Url'),
            Spacing().verticalSpace(context, 0.02),
            TextField(
              controller:
                  TextEditingController(text: "https://www.example.com"),
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
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
