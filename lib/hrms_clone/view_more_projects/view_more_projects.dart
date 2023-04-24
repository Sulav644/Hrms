import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrms_clone/hrms_clone/view_more_projects/components/member_detail_horiz_list.dart';
import 'package:hrms_clone/hrms_clone/view_more_projects/components/member_detail_vert_list.dart';
import 'package:hrms_clone/hrms_clone/view_more_projects/domain/member_sortlist_cubit.dart';
import '../../core/app_widgets.dart';
import '../../core/components/popup_menu/domain/show_menu_cubit.dart';
import '../../core/utils.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;

const path = 'assets/images/member_list';

class ViewMoreProjects extends StatefulWidget {
  const ViewMoreProjects({super.key});

  @override
  State<ViewMoreProjects> createState() => _ViewMoreProjectsState();
}

class _ViewMoreProjectsState extends State<ViewMoreProjects> {
  ScrollController scrollController = ScrollController();

  TextEditingController editingController = TextEditingController();

  int timelineIndex = 100;

  FocusNode fieldOneNode = FocusNode();

  FocusNode fieldTwoNode = FocusNode();

  FocusNode fieldThreeNode = FocusNode();
  bool showVerticalList = true;
  String? projectValue;
  String? hourlyValue;
  String? priorityValue;
  final controller = quill.QuillController.basic();
  @override
  void initState() {
    super.initState();
    Future.microtask(
        () => context.read<MembersSortListCubit>().sortToAlphabet());
  }

  @override
  Widget build(BuildContext context) {
    final showMenuStatus = context.watch<ShowMenuCubit>().state;

    return AppWidgets().appScaffold(
        context: context,
        showMenuStatus: showMenuStatus,
        controller: scrollController,
        onClick: () {
          fieldOneNode.unfocus();
          fieldTwoNode.unfocus();
          fieldThreeNode.unfocus();
        },
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Spacing().verticalSpace(context, 0.02),
            Row(children: [
              Text(
                'Projects',
                style: txtStyle(size: 17, weight: FontWeight.w500),
              )
            ]),
            Spacing().verticalSpace(context, 0.01),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              GestureDetector(
                onTap: () => setState(() {
                  showVerticalList = true;
                }),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 180, 177, 177)),
                        borderRadius: BorderRadius.circular(6)),
                    child: Padding(
                      padding: EdgeInsets.all(
                          Sizes().ratioWithScrWidth(context, 0.02)),
                      child: Column(
                          children: [threeBoxes(), threeBoxes(), threeBoxes()]),
                    )),
              ),
              Spacing().horizontalSpace(context, 0.025),
              GestureDetector(
                onTap: () => setState(() {
                  showVerticalList = false;
                }),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 180, 177, 177)),
                        borderRadius: BorderRadius.circular(6)),
                    child: Padding(
                      padding: EdgeInsets.all(
                          Sizes().ratioWithScrWidth(context, 0.02)),
                      child: Column(children: [
                        horizontalLine(context),
                        horizontalLine(context),
                        horizontalLine(context)
                      ]),
                    )),
              ),
              Spacing().horizontalSpace(context, 0.025),
              GestureDetector(
                onTap: () => showDialog(
                  context: context,
                  builder: (context) {
                    return SingleChildScrollView(
                      child: AlertDialog(
                        title: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  width: 20,
                                  height: 30,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Icon(Icons.cancel),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [Text('Create Project')]),
                          ],
                        ),
                        content: Column(children: [
                          Spacing().verticalSpace(context, 0.02),
                          Row(children: const [
                            Text('Project Name'),
                          ]),
                          Spacing().verticalSpace(context, 0.02),
                          const TextField(
                            decoration:
                                InputDecoration(border: OutlineInputBorder()),
                          ),
                          Spacing().verticalSpace(context, 0.03),
                          Row(children: const [Text('Client')]),
                          Spacing().verticalSpace(context, 0.02),
                          Container(
                            height: Sizes().ratioWithScrHeight(context, 0.075),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(2)),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                isExpanded: true,
                                value: projectValue ?? 'Select Clients',
                                items: [
                                  'Select Clients',
                                  'Yahuza Abdul-Hakim',
                                  'Vendetta Alkaline'
                                ]
                                    .map(
                                      (e) => DropdownMenuItem(
                                        value: e,
                                        child: Text(
                                          e,
                                          style: txtStyle(
                                              color: e == projectValue
                                                  ? Colors.red
                                                  : Colors.black),
                                        ),
                                      ),
                                    )
                                    .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    projectValue = value;
                                  });
                                },
                              ),
                            ),
                          ),
                          Spacing().verticalSpace(context, 0.03),
                          Row(
                            children: [
                              Text(
                                'Start Date',
                                style: txtStyle(weight: FontWeight.w400),
                              ),
                              Text(
                                ' *',
                                style: txtStyle(color: Colors.red),
                              )
                            ],
                          ),
                          Spacing().verticalSpace(context, 0.02),
                          GestureDetector(
                            onTap: () async {
                              DateTime? newDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime(2024));
                              if (newDate != null) {
                                setState(() {});
                              }
                            },
                            child: const TextField(
                              enabled: false,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  suffixIcon: Icon(Icons.calendar_month)),
                            ),
                          ),
                          Spacing().verticalSpace(context, 0.03),
                          Row(
                            children: [
                              Text(
                                'End Date',
                                style: txtStyle(weight: FontWeight.w400),
                              ),
                              Text(
                                ' *',
                                style: txtStyle(color: Colors.red),
                              )
                            ],
                          ),
                          Spacing().verticalSpace(context, 0.02),
                          GestureDetector(
                            onTap: () async {
                              DateTime? newDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime(2024));
                              if (newDate != null) {
                                setState(() {});
                              }
                            },
                            child: const TextField(
                              enabled: false,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  suffixIcon: Icon(Icons.calendar_month)),
                            ),
                          ),
                          Spacing().verticalSpace(context, 0.03),
                          Row(
                            children: [
                              Text(
                                'Rate',
                                style: txtStyle(weight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Spacing().verticalSpace(context, 0.02),
                          TextField(
                            enabled: false,
                            controller: TextEditingController(text: '\$50'),
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                suffixIcon: Icon(Icons.calendar_month)),
                          ),
                          Spacing().verticalSpace(context, 0.03),
                          Container(
                            height: Sizes().ratioWithScrHeight(context, 0.075),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(2)),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                isExpanded: true,
                                value: hourlyValue ?? 'Hourly',
                                items: [
                                  'Hourly',
                                  'Fixed',
                                ]
                                    .map(
                                      (e) => DropdownMenuItem(
                                        value: e,
                                        child: Text(
                                          e,
                                          style: txtStyle(
                                              color: e == projectValue
                                                  ? Colors.red
                                                  : Colors.black),
                                        ),
                                      ),
                                    )
                                    .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    projectValue = value;
                                  });
                                },
                              ),
                            ),
                          ),
                          Spacing().verticalSpace(context, 0.03),
                          Row(
                            children: const [Text('Priority')],
                          ),
                          Spacing().verticalSpace(context, 0.02),
                          Container(
                            height: Sizes().ratioWithScrHeight(context, 0.075),
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(2)),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                isExpanded: true,
                                value: priorityValue ?? 'High',
                                items: ['High', 'Medium', 'Low']
                                    .map(
                                      (e) => DropdownMenuItem(
                                        value: e,
                                        child: Text(
                                          e,
                                          style: txtStyle(
                                              color: e == projectValue
                                                  ? Colors.red
                                                  : Colors.black),
                                        ),
                                      ),
                                    )
                                    .toList(),
                                onChanged: (value) {
                                  setState(() {
                                    projectValue = value;
                                  });
                                },
                              ),
                            ),
                          ),
                          Spacing().verticalSpace(context, 0.03),
                          Row(children: const [
                            Text('Add Project Leader'),
                          ]),
                          Spacing().verticalSpace(context, 0.02),
                          const TextField(
                            decoration:
                                InputDecoration(border: OutlineInputBorder()),
                          ),
                          Spacing().verticalSpace(context, 0.03),
                          Row(children: const [
                            Text('Team Leader'),
                          ]),
                          Spacing().verticalSpace(context, 0.02),
                          Row(children: const [
                            CircleAvatar(
                              backgroundImage: AssetImage('$path/download.jpg'),
                              radius: 18,
                            )
                          ]),
                          Spacing().verticalSpace(context, 0.03),
                          Row(children: const [
                            Text('Add Team'),
                          ]),
                          Spacing().verticalSpace(context, 0.02),
                          const TextField(
                            decoration:
                                InputDecoration(border: OutlineInputBorder()),
                          ),
                          Spacing().verticalSpace(context, 0.03),
                          Row(children: const [
                            Text('Team Members'),
                          ]),
                          Spacing().verticalSpace(context, 0.02),
                          Row(children: [
                            ...[
                              '$path/download.jpg',
                              '$path/downloadTwo.jpg',
                              '$path/downloadThree.jpg',
                              '$path/downloadFour.jpg'
                            ]
                                .map(
                                  (e) => Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(e),
                                      radius: 18,
                                    ),
                                  ),
                                )
                                .toList(),
                            Spacing().horizontalSpace(context, 0.02),
                            const Text('+2')
                          ]),
                          Spacing().verticalSpace(context, 0.03),
                          Row(children: const [Text('Description')]),
                          Spacing().verticalSpace(context, 0.02),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 219, 213, 213)),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(6),
                                    topRight: Radius.circular(6))),
                            child: quill.QuillToolbar.basic(
                              controller: controller,
                              toolbarIconSize: 10,
                            ),
                          ),
                          Container(
                            width: Sizes().scrWidth(context),
                            height: Sizes().ratioWithScrHeight(context, 0.2),
                            color: const Color.fromARGB(255, 228, 222, 222),
                            child: quill.QuillEditor.basic(
                                controller: controller, readOnly: false),
                          ),
                          Spacing().verticalSpace(context, 0.04),
                          SizedBox(
                            width: Sizes().ratioWithScrWidth(context, 0.3),
                            height: Sizes().ratioWithScrHeight(context, 0.06),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.orange),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)))),
                                onPressed: () {
                                  Navigator.pop(context);

                                  setState(() {});
                                },
                                child: const Text('Submit')),
                          )
                        ]),
                      ),
                    );
                  },
                ),
                child: addButton(
                    context: context, title: 'Create Project', borderRad: 10),
              ),
            ]),
            Spacing().verticalSpace(context, 0.04),
            textField(fieldOneNode, 'Project Name'),
            Spacing().verticalSpace(context, 0.02),
            textField(fieldTwoNode, 'Employee Name'),
            Spacing().verticalSpace(context, 0.02),
            Container(
                width: Sizes().scrWidth(context),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 240, 236, 236),
                    border: Border.all(
                        color: const Color.fromARGB(255, 155, 154, 154),
                        width: 1),
                    borderRadius: BorderRadius.circular(6)),
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Sizes().ratioWithScrWidth(context, 0.03)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Spacing().verticalSpace(context, 0.01),
                              Text(
                                'Designation',
                                style: txtStyle(
                                    size: 13,
                                    color: const Color.fromARGB(
                                        255, 122, 121, 121)),
                              ),
                              Spacing().verticalSpace(context, 0.013),
                              Text(
                                'Select Roll',
                                style: txtStyle(
                                    color:
                                        const Color.fromARGB(255, 44, 44, 44)),
                              ),
                              Spacing().verticalSpace(context, 0.022),
                            ],
                          ),
                          const Icon(
                            Icons.arrow_drop_down,
                            color: Color.fromARGB(255, 141, 139, 139),
                            size: 28,
                          )
                        ]),
                  ),
                ])),
            Spacing().verticalSpace(context, 0.02),
            SizedBox(
              height: Sizes().ratioWithScrHeight(context, 0.07),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  onPressed: () {},
                  child: Text(
                    'SEARCH',
                    style: txtStyle(size: 18, color: Colors.white),
                  )),
            ),
            Spacing().verticalSpace(context, 0.02),
            showVerticalList
                ? const MemberDetailVertList()
                : const MemberDetailHorizList()
          ])
        ]);
  }

  Widget threeBoxes() => Row(children: [
        ...List.generate(
            3,
            (index) => Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    width: 7,
                    height: 5,
                    color: Colors.black,
                  ),
                ))
      ]);

  Widget horizontalLine(BuildContext context) => Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          width: Sizes().ratioWithScrWidth(context, 0.06),
          height: Sizes().ratioWithScrHeight(context, 0.004),
          color: const Color.fromARGB(255, 85, 83, 83),
        ),
      );

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

  Widget textField(FocusNode node, String title) => TextField(
        focusNode: node,
        decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 155, 154, 154), width: 0.4)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 155, 154, 154), width: 0.4)),
            labelText: title,
            labelStyle:
                txtStyle(color: const Color.fromARGB(255, 151, 147, 147)),
            fillColor: const Color.fromARGB(255, 240, 236, 236),
            filled: true),
      );
}
