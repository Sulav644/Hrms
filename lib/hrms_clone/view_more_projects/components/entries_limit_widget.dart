import 'package:flutter/material.dart';
import '../../../core/utils.dart';

class EntriesLimitWidget extends StatefulWidget {
  const EntriesLimitWidget({super.key});

  @override
  State<EntriesLimitWidget> createState() => _EntriesLimitWidgetState();
}

class _EntriesLimitWidgetState extends State<EntriesLimitWidget> {
  bool check = false;
  int limitValue = 10;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        'Show',
        style: txtStyle(weight: FontWeight.w400),
      ),
      Spacing().horizontalSpace(context, 0.015),
      GestureDetector(
        onTap: () async {
          await showDialog(
            context: context,
            builder: (context) {
              return StatefulBuilder(
                builder: (context, setState) => AlertDialog(
                  title: const Text(''),
                  content: SizedBox(
                    height: Sizes().ratioWithScrHeight(context, 0.3),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Sizes().ratioWithScrWidth(context, 0.02)),
                      child: Column(
                        children: [
                          limitOption(
                              onClick: () {
                                setState(() {
                                  limitValue = 10;
                                });
                                Navigator.pop(context);
                              },
                              context: context,
                              limit: 10,
                              val: 10,
                              groupVal: limitValue),
                          limitOption(
                              onClick: () {
                                setState(() {
                                  limitValue = 25;
                                });
                                Navigator.pop(context);
                              },
                              context: context,
                              limit: 25,
                              val: 25,
                              groupVal: limitValue),
                          limitOption(
                              onClick: () {
                                setState(() {
                                  limitValue = 50;
                                });
                                Navigator.pop(context);
                              },
                              context: context,
                              limit: 50,
                              val: 50,
                              groupVal: limitValue),
                          limitOption(
                              onClick: () {
                                setState(() {
                                  limitValue = 100;
                                });
                                Navigator.pop(context);
                              },
                              context: context,
                              limit: 100,
                              val: 100,
                              groupVal: limitValue),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
          setState(() {});
        },
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: const Color.fromARGB(255, 82, 80, 80), width: 0.4),
                borderRadius: BorderRadius.circular(6)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Text(
                  '$limitValue',
                  style: txtStyle(weight: FontWeight.w400),
                ),
                Spacing().horizontalSpace(context, 0.04),
                Image.asset(
                  'assets/images/member_list/up_down_arrow.png',
                  width: Sizes().ratioWithScrWidth(context, 0.045),
                ),
              ]),
            )),
      ),
      Spacing().horizontalSpace(context, 0.015),
      Text(
        'entries',
        style: txtStyle(weight: FontWeight.w400),
      )
    ]);
  }

  Widget limitOption(
          {required VoidCallback onClick,
          required BuildContext context,
          required int limit,
          required int val,
          required int groupVal}) =>
      GestureDetector(
        onTap: () => onClick(),
        child: Container(
          color: Colors.transparent,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IgnorePointer(
              child: Text(
                '$limit',
                style: txtStyle(size: 22),
              ),
            ),
            Transform.scale(
              scale: 1.3,
              child: IgnorePointer(
                child: Radio(
                  value: val,
                  groupValue: groupVal,
                  onChanged: (value) {},
                ),
              ),
            )
          ]),
        ),
      );
}
