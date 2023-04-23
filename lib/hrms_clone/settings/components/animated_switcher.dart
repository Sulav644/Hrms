import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hrms_clone/core/app_widgets.dart';
import 'package:hrms_clone/hrms_clone/settings/components/admin_selection.dart';

import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

import '../../../core/utils.dart';
import '../salary_setting.dart';

class InputFieldsWithAnimatedToggler extends StatelessWidget {
  final VoidCallback onClick;
  final String title;
  final String inputFieldTitleOne;
  final String inputFieldTitleTwo;
  final AnimationController switchController;
  final Animation<TimelineValue> switchAnimation;
  final AnimationController colorController;
  final Animation<TimelineValue> colorAnimation;
  final AnimationController textController;
  final Animation<TimelineValue> textAnimation;
  InputFieldsWithAnimatedToggler(
      {super.key,
      required this.onClick,
      required this.title,
      required this.inputFieldTitleOne,
      required this.inputFieldTitleTwo,
      required this.switchController,
      required this.switchAnimation,
      required this.colorController,
      required this.colorAnimation,
      required this.textController,
      required this.textAnimation});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('DA and HRA'),
          GestureDetector(
            onTap: () => onClick(),
            child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: Sizes().ratioWithScrWidth(context, 0.2),
                height: Sizes().ratioWithScrHeight(context, 0.05),
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(20)),
                alignment: Alignment.center,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    AnimatedBuilder(
                      animation: colorController,
                      builder: (context, child) {
                        return Container(
                          width: Sizes().ratioWithScrWidth(context, 0.4),
                          height: Sizes().ratioWithScrHeight(context, 0.05),
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
                            width: Sizes().ratioWithScrWidth(context, 0.07),
                            height: Sizes().ratioWithScrWidth(context, 0.07),
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
      Text(inputFieldTitleOne),
      TextField(
        decoration: InputDecoration(border: OutlineInputBorder()),
      ),
      Text(inputFieldTitleTwo),
      TextField(
        decoration: InputDecoration(border: OutlineInputBorder()),
      ),
    ]);
  }
}
