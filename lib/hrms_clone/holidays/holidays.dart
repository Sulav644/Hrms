import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrms_clone/hrms_clone/holidays/components/horiz_list_tile.dart';
import 'package:hrms_clone/hrms_clone/holidays/data/holiday_date.dart';
import 'package:hrms_clone/hrms_clone/holidays/domain/add_holiday_cubit.dart';
import 'package:intl/intl.dart';
import '../../core/app_widgets.dart';
import '../../core/utils.dart';

class Holidays extends StatefulWidget {
  const Holidays({super.key});

  @override
  State<Holidays> createState() => _HolidaysState();
}

class _HolidaysState extends State<Holidays> {
  bool showMenuStatus = false;

  ScrollController scrollController = ScrollController();

  TextEditingController controller = TextEditingController();
  TextEditingController controllerTwo = TextEditingController();
  String date = '';

  @override
  Widget build(BuildContext context) {
    final style = txtStyle(size: 16, weight: FontWeight.w500, height: 1.3);
    final styleTwo = txtStyle(size: 16, weight: FontWeight.w400, height: 1.3);
    final holidaysList = context.watch<AddHolidayCubit>().state;
    return AppWidgets().appScaffold(
        context: context,
        showMenuStatus: showMenuStatus,
        controller: scrollController,
        onClick: () {},
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacing().verticalSpace(context, 0.02),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'All Holidays',
                  style: txtStyle(size: 18, weight: FontWeight.w600),
                ),
                GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Add Holiday',
                                  style: txtStyle(
                                      size: 22, weight: FontWeight.w600),
                                ),
                              ],
                            ),
                            content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Holiday Name',
                                        style:
                                            txtStyle(weight: FontWeight.w400),
                                      ),
                                      Text(
                                        ' *',
                                        style: txtStyle(color: Colors.red),
                                      )
                                    ],
                                  ),
                                  Spacing().verticalSpace(context, 0.015),
                                  TextField(
                                      controller: controller,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                      )),
                                  Spacing().verticalSpace(context, 0.03),
                                  Row(
                                    children: [
                                      Text(
                                        'Holiday Date',
                                        style:
                                            txtStyle(weight: FontWeight.w400),
                                      ),
                                      Text(
                                        ' *',
                                        style: txtStyle(color: Colors.red),
                                      )
                                    ],
                                  ),
                                  Spacing().verticalSpace(context, 0.015),
                                  GestureDetector(
                                    onTap: () async {
                                      DateTime? newDate = await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime.now(),
                                          lastDate: DateTime(2024));
                                      setState(() {
                                        date = DateFormat('yyyy-MM-dd')
                                            .format(newDate!);
                                        controllerTwo.text = date;
                                      });
                                    },
                                    child: TextField(
                                      enabled: false,
                                      controller: controllerTwo,
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          suffixIcon:
                                              Icon(Icons.arrow_drop_down)),
                                    ),
                                  ),
                                  Spacing().verticalSpace(context, 0.04),
                                  SizedBox(
                                    width:
                                        Sizes().ratioWithScrWidth(context, 0.3),
                                    height: Sizes()
                                        .ratioWithScrHeight(context, 0.06),
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.orange),
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)))),
                                        onPressed: () {
                                          final status = context
                                              .read<AddHolidayCubit>()
                                              .checkParameters(HolidayDate(
                                                  name: controller.text,
                                                  date: date));
                                          if (status) {
                                            context
                                                .read<AddHolidayCubit>()
                                                .addHoliday(HolidayDate(
                                                    name: controller.text,
                                                    date: date));
                                            Navigator.pop(context);
                                          }

                                          setState(() {
                                            controller.text = '';
                                            date = '';
                                          });
                                        },
                                        child: const Text('Submit')),
                                  )
                                ]),
                          );
                        },
                      );
                    },
                    child: addButton(
                        context: context, title: 'Add Holiday', borderRad: 20))
              ]),
              Spacing().verticalSpace(context, 0.04),
              Container(
                height: Sizes().ratioWithScrHeight(context, 0.097),
                alignment: Alignment.topCenter,
                color: const Color.fromARGB(255, 209, 206, 206),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: Sizes().ratioWithScrHeight(context, 0.002)),
                  child: Container(
                    height: Sizes().ratioWithScrHeight(context, 0.09),
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Sizes().ratioWithScrWidth(context, 0.04)),
                      child: Row(
                        children: [
                          HorizListTile(
                              width: 0.07,
                              child: Text(
                                '#',
                                style: style,
                              )),
                          HorizListTile(
                              width: 0.28,
                              child: Text(
                                'Title',
                                style: style,
                              )),
                          HorizListTile(
                              width: 0.21,
                              child: Text(
                                'Holiday Date',
                                style: style,
                              )),
                          HorizListTile(
                              width: 0.14,
                              child: Text(
                                'Day',
                                style: style,
                              )),
                          HorizListTile(
                              width: 0.14,
                              child: Text(
                                'Action',
                                style: style,
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              ...holidaysList
                  .map(
                    (e) => Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Sizes().ratioWithScrWidth(context, 0.04)),
                      child: Row(
                        children: [
                          HorizListTile(
                              width: 0.07,
                              child: Text(
                                '${holidaysList.indexOf(e) + 1}',
                                style: styleTwo,
                              )),
                          HorizListTile(
                              width: 0.28,
                              child: Text(
                                e.name!,
                                style: styleTwo,
                              )),
                          HorizListTile(
                              width: 0.21,
                              child: Text(
                                '${e.date!.substring(0, e.date!.lastIndexOf('-') + 1)}'
                                ' ${e.date!.substring(e.date!.lastIndexOf('-') + 1)}',
                                style: styleTwo,
                              )),
                          HorizListTile(
                              width: 0.14,
                              child: Text(
                                '${DateFormat('yyyy-MM-dd').format(DateTime.now()).substring(0, DateFormat('yyyy-MM-dd').format(DateTime.now()).indexOf('-') + 1)}'
                                ' ${DateFormat('yyyy-MM-dd').format(DateTime.now()).substring(DateFormat('yyyy-MM-dd').format(DateTime.now()).indexOf('-') + 1)}',
                                style: styleTwo,
                              )),
                          HorizListTile(
                              width: 0.14,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: Sizes()
                                        .ratioWithScrWidth(context, 0.06)),
                                child: PopupMenuButton(
                                  onSelected: (value) {
                                    if (value.toString() == 'Delete') {
                                      context
                                          .read<AddHolidayCubit>()
                                          .removeHoliday(HolidayDate(
                                              name: holidaysList[
                                                      holidaysList.indexOf(e)]
                                                  .name,
                                              date: holidaysList[
                                                      holidaysList.indexOf(e)]
                                                  .date));
                                    }
                                  },
                                  padding: EdgeInsets.zero,
                                  offset: Offset(
                                      1,
                                      Sizes()
                                          .ratioWithScrHeight(context, 0.06)),
                                  itemBuilder: (context) {
                                    return [
                                      ...[
                                        'Edit',
                                        'Delete',
                                      ].map((e) => PopupMenuItem(
                                            padding: EdgeInsets.only(
                                                top: Sizes().ratioWithScrWidth(
                                                    context, 0.02),
                                                left: Sizes().ratioWithScrWidth(
                                                    context, 0.05),
                                                bottom: Sizes()
                                                    .ratioWithScrWidth(
                                                        context, 0.02),
                                                right: Sizes()
                                                    .ratioWithScrWidth(
                                                        context, 0.1)),
                                            height: 0,
                                            child: Row(
                                              children: [
                                                e == 'Edit'
                                                    ? const Icon(
                                                        Icons.edit_outlined)
                                                    : const Icon(
                                                        Icons.delete_outline),
                                                Spacing().horizontalSpace(
                                                    context, 0.02),
                                                Text(
                                                  e,
                                                  style: txtStyle(
                                                      size: 13,
                                                      weight: FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          ))
                                    ];
                                  },
                                ),
                              ))
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ],
          ),
        ]);
  }

  Widget addButton(
          {required BuildContext context,
          required String title,
          required double borderRad}) =>
      Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 153, 69),
            borderRadius: BorderRadius.circular(borderRad)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            const Icon(
              Icons.add,
              size: 16,
              color: Colors.white,
            ),
            Spacing().horizontalSpace(context, 0.005),
            Text(
              title,
              style: txtStyle(color: Colors.white, size: 16),
            ),
          ]),
        ),
      );
}
