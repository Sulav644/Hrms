import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hrms_clone/core/app_widgets.dart';
import 'package:hrms_clone/hrms_clone/settings/components/admin_selection.dart';

import '../../core/utils.dart';
import '../holidays/components/horiz_list_tile.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

enum AnimProps { left }

class SalarySetting extends StatefulWidget {
  final double switchPadLeft;
  final double textPadLeft;
  SalarySetting(
      {super.key, required this.switchPadLeft, required this.textPadLeft});

  @override
  State<SalarySetting> createState() => _SalarySettingState();
}

class _SalarySettingState extends State<SalarySetting>
    with TickerProviderStateMixin {
  bool showMenuStatus = false;
  bool toggleSwitch = false;

  ScrollController controller = ScrollController();
  late AnimationController switchController, colorController, textController;

  late Animation<TimelineValue<AnimProps>> switchAnimation,
      colorAnimation,
      textAnimation;

  @override
  void initState() {
    super.initState();

    switchController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    colorController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    textController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    switchAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.left,
            tween:
                Tween(begin: widget.switchPadLeft, end: widget.switchPadLeft))
        .parent
        .animatedBy(switchController);
    colorAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.left, tween: Tween(begin: 1.0, end: 1.0))
        .parent
        .animatedBy(colorController);
    textAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.left,
            tween: Tween(begin: widget.textPadLeft, end: widget.textPadLeft))
        .parent
        .animatedBy(textController);
  }

  void startSwitchAnimation(BuildContext context) {
    switchAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.left,
            tween: Tween(
                begin: Sizes().ratioWithScrWidth(context, 0.11),
                end: Sizes().ratioWithScrWidth(context, 0.02)))
        .parent
        .animatedBy(switchController);
    if (switchController.isCompleted) {
      switchController.reverse();
    } else {
      switchController.forward();
    }
  }

  void startColorAnimation(BuildContext context) {
    colorAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.left, tween: Tween(begin: 1.0, end: 0.0))
        .parent
        .animatedBy(colorController);
    if (colorController.isCompleted) {
      colorController.reverse();
    } else {
      colorController.forward();
    }
  }

  void startTextAnimation(BuildContext context) {
    textAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.left,
            tween: Tween(
                begin: Sizes().ratioWithScrWidth(context, 0.04),
                end: -Sizes().ratioWithScrWidth(context, 0.074)))
        .parent
        .animatedBy(textController);
    if (textController.isCompleted) {
      textController.reverse();
    } else {
      textController.forward();
    }
  }

  @override
  void dispose() {
    switchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppWidgets().settingScaffold(
      context: context,
      showMenuStatus: showMenuStatus,
      controller: controller,
      onClick: () {},
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Salary Settings'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('DA and HRA'),
                GestureDetector(
                  onTap: () {
                    startSwitchAnimation(context);
                    startColorAnimation(context);
                    startTextAnimation(context);
                  },
                  child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: Sizes().ratioWithScrWidth(context, 0.2),
                      height: Sizes().ratioWithScrHeight(context, 0.05),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                      alignment: Alignment.center,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          AnimatedBuilder(
                            animation: colorController,
                            builder: (context, child) {
                              return Container(
                                width: Sizes().ratioWithScrWidth(context, 0.4),
                                height:
                                    Sizes().ratioWithScrHeight(context, 0.05),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Colors.green,
                                      Colors.red
                                    ], stops: [
                                      colorAnimation.value.get(AnimProps.left),
                                      0.01
                                    ]),
                                    borderRadius: BorderRadius.circular(20)),
                              );
                            },
                          ),
                          AnimatedBuilder(
                            animation: textController,
                            builder: (context, child) {
                              return Positioned(
                                  left: textAnimation.value.get(AnimProps.left),
                                  child: Row(
                                    children: [
                                      Text('ON'),
                                      Spacing().horizontalSpace(context, 0.12),
                                      Text('OFF')
                                    ],
                                  ));
                            },
                          ),
                          AnimatedBuilder(
                            animation: switchController,
                            builder: (context, child) {
                              return Positioned(
                                left: switchAnimation.value.get(AnimProps.left),
                                child: Container(
                                  width:
                                      Sizes().ratioWithScrWidth(context, 0.07),
                                  height:
                                      Sizes().ratioWithScrWidth(context, 0.07),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(100)),
                                ),
                              );
                            },
                          ),
                        ],
                      )),
                )
              ],
            ),
            Text('DA (%)'),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Text('HRA (%)'),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Provident Fund Settings'),
                GestureDetector(
                  onTap: () {
                    startSwitchAnimation(context);
                    startColorAnimation(context);
                    startTextAnimation(context);
                  },
                  child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: Sizes().ratioWithScrWidth(context, 0.2),
                      height: Sizes().ratioWithScrHeight(context, 0.05),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                      alignment: Alignment.center,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          AnimatedBuilder(
                            animation: colorController,
                            builder: (context, child) {
                              return Container(
                                width: Sizes().ratioWithScrWidth(context, 0.4),
                                height:
                                    Sizes().ratioWithScrHeight(context, 0.05),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Colors.green,
                                      Colors.red
                                    ], stops: [
                                      colorAnimation.value.get(AnimProps.left),
                                      0.01
                                    ]),
                                    borderRadius: BorderRadius.circular(20)),
                              );
                            },
                          ),
                          AnimatedBuilder(
                            animation: textController,
                            builder: (context, child) {
                              return Positioned(
                                  left: textAnimation.value.get(AnimProps.left),
                                  child: Row(
                                    children: [
                                      Text('ON'),
                                      Spacing().horizontalSpace(context, 0.12),
                                      Text('OFF')
                                    ],
                                  ));
                            },
                          ),
                          AnimatedBuilder(
                            animation: switchController,
                            builder: (context, child) {
                              return Positioned(
                                left: switchAnimation.value.get(AnimProps.left),
                                child: Container(
                                  width:
                                      Sizes().ratioWithScrWidth(context, 0.07),
                                  height:
                                      Sizes().ratioWithScrWidth(context, 0.07),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(100)),
                                ),
                              );
                            },
                          ),
                        ],
                      )),
                )
              ],
            ),
            Text('Employee Share (%)'),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Text('Organization Share (%)'),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('ESI Settings'),
                GestureDetector(
                  onTap: () {
                    startSwitchAnimation(context);
                    startColorAnimation(context);
                    startTextAnimation(context);
                  },
                  child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: Sizes().ratioWithScrWidth(context, 0.2),
                      height: Sizes().ratioWithScrHeight(context, 0.05),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                      alignment: Alignment.center,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          AnimatedBuilder(
                            animation: colorController,
                            builder: (context, child) {
                              return Container(
                                width: Sizes().ratioWithScrWidth(context, 0.4),
                                height:
                                    Sizes().ratioWithScrHeight(context, 0.05),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Colors.green,
                                      Colors.red
                                    ], stops: [
                                      colorAnimation.value.get(AnimProps.left),
                                      0.01
                                    ]),
                                    borderRadius: BorderRadius.circular(20)),
                              );
                            },
                          ),
                          AnimatedBuilder(
                            animation: textController,
                            builder: (context, child) {
                              return Positioned(
                                  left: textAnimation.value.get(AnimProps.left),
                                  child: Row(
                                    children: [
                                      Text('ON'),
                                      Spacing().horizontalSpace(context, 0.12),
                                      Text('OFF')
                                    ],
                                  ));
                            },
                          ),
                          AnimatedBuilder(
                            animation: switchController,
                            builder: (context, child) {
                              return Positioned(
                                left: switchAnimation.value.get(AnimProps.left),
                                child: Container(
                                  width:
                                      Sizes().ratioWithScrWidth(context, 0.07),
                                  height:
                                      Sizes().ratioWithScrWidth(context, 0.07),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(100)),
                                ),
                              );
                            },
                          ),
                        ],
                      )),
                )
              ],
            ),
            Text('Employee Share (%)'),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Text('Organization Share (%)'),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('TDS'),
                GestureDetector(
                  onTap: () {
                    startSwitchAnimation(context);
                    startColorAnimation(context);
                    startTextAnimation(context);
                  },
                  child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: Sizes().ratioWithScrWidth(context, 0.2),
                      height: Sizes().ratioWithScrHeight(context, 0.05),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                      alignment: Alignment.center,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          AnimatedBuilder(
                            animation: colorController,
                            builder: (context, child) {
                              return Container(
                                width: Sizes().ratioWithScrWidth(context, 0.4),
                                height:
                                    Sizes().ratioWithScrHeight(context, 0.05),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Colors.green,
                                      Colors.red
                                    ], stops: [
                                      colorAnimation.value.get(AnimProps.left),
                                      0.01
                                    ]),
                                    borderRadius: BorderRadius.circular(20)),
                              );
                            },
                          ),
                          AnimatedBuilder(
                            animation: textController,
                            builder: (context, child) {
                              return Positioned(
                                  left: textAnimation.value.get(AnimProps.left),
                                  child: Row(
                                    children: [
                                      Text('ON'),
                                      Spacing().horizontalSpace(context, 0.12),
                                      Text('OFF')
                                    ],
                                  ));
                            },
                          ),
                          AnimatedBuilder(
                            animation: switchController,
                            builder: (context, child) {
                              return Positioned(
                                left: switchAnimation.value.get(AnimProps.left),
                                child: Container(
                                  width:
                                      Sizes().ratioWithScrWidth(context, 0.07),
                                  height:
                                      Sizes().ratioWithScrWidth(context, 0.07),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(100)),
                                ),
                              );
                            },
                          ),
                        ],
                      )),
                )
              ],
            ),
            Text('Salary From'),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Text('Salary To'),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Text('%'),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            ElevatedButton(onPressed: () {}, child: Icon(Icons.delete)),
            Text('Salary From'),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Text('Salary To'),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Text('%'),
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            ElevatedButton(onPressed: () {}, child: Icon(Icons.delete)),
            ElevatedButton(onPressed: () {}, child: Icon(Icons.add)),
          ],
        ),
      ],
    );
  }
}
