import 'package:flutter/material.dart';
import 'package:hrms_clone/core/app_widgets.dart';
import '../../core/utils.dart';

class InvoiceSetting extends StatefulWidget {
  const InvoiceSetting({super.key});

  @override
  State<InvoiceSetting> createState() => _InvoiceSettingState();
}

class _InvoiceSettingState extends State<InvoiceSetting> {
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
              'Invoice Settings',
              style: txtStyle(size: 18, weight: FontWeight.w600),
            ),
            Spacing().verticalSpace(context, 0.04),
            Row(
              children: const [
                Text('Invoice prefix'),
              ],
            ),
            Spacing().verticalSpace(context, 0.02),
            TextField(
              controller: TextEditingController(text: "INV"),
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            Spacing().verticalSpace(context, 0.03),
            const Text('Invoice Logo'),
            Spacing().verticalSpace(context, 0.01),
            Row(children: [
              ElevatedButton(
                  onPressed: () {}, child: const Text('Choose File')),
              Spacing().horizontalSpace(context, 0.02),
              const Text('No file choosen')
            ]),
            Spacing().verticalSpace(context, 0.01),
            const Text('Recommended image size is 200px x 40px'),
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
