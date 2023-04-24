import 'package:flutter/material.dart';
import 'package:hrms_clone/hrms_clone/employees_list/components/employee_detail_tile.dart';
import 'package:hrms_clone/hrms_clone/view_more_projects/components/member_detail_horiz_list.dart';
import '../../core/app_widgets.dart';
import '../../core/utils.dart';
import '../project_detail_&_member/data/member_list.dart';

List<MemberList> employeeList = [
  const MemberList(
      image: 'assets/images/member_list/download.jpg',
      name: 'George Merchason',
      designation: 'Web Designer'),
  const MemberList(
      image: 'assets/images/member_list/downloadTwo.jpg',
      name: 'Mushe Abdul-Hakim',
      designation: 'Web Developer'),
  const MemberList(
      image: 'assets/images/member_list/downloadThree.jpg',
      name: 'Yahuza Abdul-Hakim',
      designation: 'Web Developer'),
];

class EmployeesList extends StatefulWidget {
  const EmployeesList({super.key});

  @override
  State<EmployeesList> createState() => _EmployeesListState();
}

class _EmployeesListState extends State<EmployeesList> {
  bool showMenuStatus = false;

  TextEditingController editingController = TextEditingController();

  int timelineIndex = 100;

  FocusNode fieldOneNode = FocusNode();

  FocusNode fieldTwoNode = FocusNode();

  FocusNode fieldThreeNode = FocusNode();

  ScrollController scrollController = ScrollController();

  bool showVerticalList = true;
  String? departmentValue;
  String? designationValue;

  @override
  Widget build(BuildContext context) {
    return AppWidgets().appScaffold(
        context: context,
        showMenuStatus: showMenuStatus,
        controller: scrollController,
        onClick: () {},
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Spacing().verticalSpace(context, 0.02),
            Row(children: [
              Text(
                'Employee',
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text('Add Employee'),
                                      ]),
                                ],
                              ),
                              content: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Spacing().verticalSpace(context, 0.015),
                                    Row(
                                      children: [
                                        Text(
                                          'First Name',
                                          style:
                                              txtStyle(weight: FontWeight.w400),
                                        ),
                                        Text(
                                          ' *',
                                          style: txtStyle(color: Colors.red),
                                        ),
                                      ],
                                    ),
                                    Spacing().verticalSpace(context, 0.02),
                                    const TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder()),
                                    ),
                                    Spacing().verticalSpace(context, 0.03),
                                    Row(
                                      children: [
                                        Text(
                                          'Last Name',
                                          style:
                                              txtStyle(weight: FontWeight.w400),
                                        ),
                                        Text(
                                          ' *',
                                          style: txtStyle(color: Colors.red),
                                        ),
                                      ],
                                    ),
                                    Spacing().verticalSpace(context, 0.02),
                                    const TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder()),
                                    ),
                                    Spacing().verticalSpace(context, 0.03),
                                    Row(
                                      children: [
                                        Text(
                                          'Username',
                                          style:
                                              txtStyle(weight: FontWeight.w400),
                                        ),
                                        Text(
                                          ' *',
                                          style: txtStyle(color: Colors.red),
                                        ),
                                      ],
                                    ),
                                    Spacing().verticalSpace(context, 0.02),
                                    const TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder()),
                                    ),
                                    Spacing().verticalSpace(context, 0.03),
                                    Row(
                                      children: [
                                        Text(
                                          'Email',
                                          style:
                                              txtStyle(weight: FontWeight.w400),
                                        ),
                                        Text(
                                          ' *',
                                          style: txtStyle(color: Colors.red),
                                        ),
                                      ],
                                    ),
                                    Spacing().verticalSpace(context, 0.02),
                                    const TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder()),
                                    ),
                                    Spacing().verticalSpace(context, 0.03),
                                    Row(
                                      children: [
                                        Text(
                                          'Password',
                                          style:
                                              txtStyle(weight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                    Spacing().verticalSpace(context, 0.02),
                                    const TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder()),
                                    ),
                                    Spacing().verticalSpace(context, 0.03),
                                    Row(
                                      children: [
                                        Text(
                                          'Confirm Password',
                                          style:
                                              txtStyle(weight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                    Spacing().verticalSpace(context, 0.02),
                                    const TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder()),
                                    ),
                                    Spacing().verticalSpace(context, 0.03),
                                    Row(
                                      children: [
                                        Text(
                                          'Employee ID',
                                          style:
                                              txtStyle(weight: FontWeight.w400),
                                        ),
                                        Text(
                                          ' *',
                                          style: txtStyle(color: Colors.red),
                                        ),
                                      ],
                                    ),
                                    Spacing().verticalSpace(context, 0.02),
                                    TextField(
                                      enabled: false,
                                      controller: TextEditingController(
                                          text: 'EMP-857906'),
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder()),
                                    ),
                                    Spacing().verticalSpace(context, 0.03),
                                    Row(
                                      children: [
                                        Text(
                                          'Phone',
                                          style:
                                              txtStyle(weight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                    Spacing().verticalSpace(context, 0.02),
                                    const TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder()),
                                    ),
                                    Spacing().verticalSpace(context, 0.03),
                                    Row(
                                      children: [
                                        Text(
                                          'Department',
                                          style:
                                              txtStyle(weight: FontWeight.w400),
                                        ),
                                        Text(
                                          ' *',
                                          style: txtStyle(color: Colors.red),
                                        )
                                      ],
                                    ),
                                    Spacing().verticalSpace(context, 0.02),
                                    Container(
                                      height: Sizes()
                                          .ratioWithScrHeight(context, 0.075),
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(2)),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton(
                                          isExpanded: true,
                                          value: departmentValue ??
                                              'Select Department',
                                          items: [
                                            'Select Department',
                                            'Marketing',
                                            'IT Department',
                                            'Web Development'
                                          ]
                                              .map(
                                                (e) => DropdownMenuItem(
                                                  value: e,
                                                  child: Text(
                                                    e,
                                                    style: txtStyle(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              )
                                              .toList(),
                                          onChanged: (value) {
                                            setState(() {
                                              departmentValue = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Spacing().verticalSpace(context, 0.03),
                                    Row(
                                      children: [
                                        Text(
                                          'Select Designation',
                                          style:
                                              txtStyle(weight: FontWeight.w400),
                                        ),
                                        Text(
                                          ' *',
                                          style: txtStyle(color: Colors.red),
                                        )
                                      ],
                                    ),
                                    Spacing().verticalSpace(context, 0.02),
                                    Container(
                                      height: Sizes()
                                          .ratioWithScrHeight(context, 0.075),
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black),
                                          borderRadius:
                                              BorderRadius.circular(2)),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton(
                                          isExpanded: true,
                                          value: designationValue ??
                                              'Select Designation',
                                          items: [
                                            'Select Designation',
                                            'Web Designer',
                                            'Web Developer',
                                          ]
                                              .map(
                                                (e) => DropdownMenuItem(
                                                  value: e,
                                                  child: Text(
                                                    e,
                                                    style: txtStyle(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              )
                                              .toList(),
                                          onChanged: (value) {
                                            setState(() {
                                              designationValue = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Spacing().verticalSpace(context, 0.04),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: Sizes()
                                              .ratioWithScrWidth(context, 0.3),
                                          height: Sizes().ratioWithScrHeight(
                                              context, 0.06),
                                          child: ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          Colors.orange),
                                                  shape:
                                                      MaterialStateProperty.all(
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)))),
                                              onPressed: () {
                                                Navigator.pop(context);

                                                setState(() {});
                                              },
                                              child: const Text('Submit')),
                                        ),
                                      ],
                                    )
                                  ]),
                            ),
                          );
                        },
                      ),
                  child: addButton(
                      context: context, title: 'Add Employee', borderRad: 10)),
            ]),
            Spacing().verticalSpace(context, 0.04),
            textField(fieldOneNode, 'Employee ID'),
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
                ? Column(children: [
                    ...employeeList
                        .map(
                          (e) => EmployeeDetailTile(e: e),
                        )
                        .toList()
                  ])
                : const MemberDetailHorizList(),
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
            fillColor: Colors.white,
            filled: true),
      );
}
