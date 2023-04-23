import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hrms_clone/core/app_widgets.dart';

class CompanySetting extends StatelessWidget {
  CompanySetting({super.key});
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
            Text('Company Settings'),
            Row(
              children: [
                Text('Company Name'),
                Text('*'),
              ],
            ),
            TextField(
              controller:
                  TextEditingController(text: "Dreamguy's Technologies"),
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Text('Contact Person'),
            TextField(
              controller: TextEditingController(text: "Daniel Porter"),
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Text('Address'),
            TextField(
              controller: TextEditingController(
                  text: "3864 Quiet Valley Lane,Sherman Oaks, CA, 91403"),
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Text('Country'),
            TextField(
              controller: TextEditingController(text: "USA"),
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Text('City'),
            TextField(
              controller: TextEditingController(text: "Sherman Oaks"),
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Text('State/Province'),
            TextField(
              controller: TextEditingController(text: "California"),
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Text('Postal Code'),
            TextField(
              controller: TextEditingController(text: "91403"),
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Text('Email'),
            TextField(
              controller:
                  TextEditingController(text: "danielporter@example.com"),
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Text('Phone Number'),
            TextField(
              controller: TextEditingController(text: "818-635-5579"),
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Text('Mobile Number'),
            TextField(
              controller: TextEditingController(text: "818-635-5579"),
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Text('Fax'),
            TextField(
              controller: TextEditingController(text: "818-978-7102"),
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Text('Website Url'),
            TextField(
              controller:
                  TextEditingController(text: "https://www.example.com"),
              decoration: InputDecoration(border: OutlineInputBorder()),
            )
          ],
        ),
      ],
    );
  }
}
