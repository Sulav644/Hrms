import 'package:flutter/material.dart';
import 'package:hrms_clone/core/app_widgets.dart';
import '../../core/utils.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

enum AnimProps { leftForDa, leftForPf, leftForEsi, leftForTds }

class SalarySetting extends StatefulWidget {
  final double switchPadLeft;
  final double textPadLeft;
  const SalarySetting(
      {super.key, required this.switchPadLeft, required this.textPadLeft});

  @override
  State<SalarySetting> createState() => _SalarySettingState();
}

class _SalarySettingState extends State<SalarySetting>
    with TickerProviderStateMixin {
  bool showMenuStatus = false;
  bool toggleSwitch = false;

  ScrollController controller = ScrollController();
  late AnimationController switchController,
      daSwitchController,
      daColorController,
      daTextController,
      pfSwitchController,
      pfColorController,
      pfTextController,
      esiSwitchController,
      esiColorController,
      esiTextController,
      tdsSwitchController,
      tdsColorController,
      tdsTextController;

  late Animation<TimelineValue<AnimProps>> daSwitchAnimation,
      daColorAnimation,
      daTextAnimation,
      pfSwitchAnimation,
      pfColorAnimation,
      pfTextAnimation,
      esiSwitchAnimation,
      esiColorAnimation,
      esiTextAnimation,
      tdsSwitchAnimation,
      tdsColorAnimation,
      tdsTextAnimation;

  @override
  void initState() {
    super.initState();

    daSwitchController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    daColorController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    daTextController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    pfSwitchController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    pfColorController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    pfTextController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    esiSwitchController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    esiColorController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    esiTextController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    tdsSwitchController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    tdsColorController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    tdsTextController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    daSwitchAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.leftForDa,
            tween:
                Tween(begin: widget.switchPadLeft, end: widget.switchPadLeft))
        .parent
        .animatedBy(daSwitchController);
    daColorAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.leftForDa, tween: Tween(begin: 1.0, end: 1.0))
        .parent
        .animatedBy(daColorController);
    daTextAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.leftForDa,
            tween: Tween(begin: widget.textPadLeft, end: widget.textPadLeft))
        .parent
        .animatedBy(daTextController);
    pfSwitchAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.leftForPf,
            tween:
                Tween(begin: widget.switchPadLeft, end: widget.switchPadLeft))
        .parent
        .animatedBy(pfSwitchController);
    pfColorAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.leftForPf, tween: Tween(begin: 1.0, end: 1.0))
        .parent
        .animatedBy(pfColorController);
    pfTextAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.leftForPf,
            tween: Tween(begin: widget.textPadLeft, end: widget.textPadLeft))
        .parent
        .animatedBy(pfTextController);
    esiSwitchAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.leftForEsi,
            tween:
                Tween(begin: widget.switchPadLeft, end: widget.switchPadLeft))
        .parent
        .animatedBy(esiSwitchController);
    esiColorAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.leftForEsi, tween: Tween(begin: 1.0, end: 1.0))
        .parent
        .animatedBy(esiColorController);
    esiTextAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.leftForEsi,
            tween: Tween(begin: widget.textPadLeft, end: widget.textPadLeft))
        .parent
        .animatedBy(esiTextController);
    tdsSwitchAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.leftForTds,
            tween:
                Tween(begin: widget.switchPadLeft, end: widget.switchPadLeft))
        .parent
        .animatedBy(tdsSwitchController);
    tdsColorAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.leftForTds, tween: Tween(begin: 1.0, end: 1.0))
        .parent
        .animatedBy(tdsColorController);
    tdsTextAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.leftForTds,
            tween: Tween(begin: widget.textPadLeft, end: widget.textPadLeft))
        .parent
        .animatedBy(tdsTextController);
  }

  void startDaSwitchController(BuildContext context) {
    daSwitchAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.leftForDa,
            tween: Tween(
                begin: Sizes().ratioWithScrWidth(context, 0.11),
                end: Sizes().ratioWithScrWidth(context, 0.02)))
        .parent
        .animatedBy(daSwitchController);
    if (daSwitchController.isCompleted) {
      daSwitchController.reverse();
    } else {
      daSwitchController.forward();
    }
  }

  void startDaColorAnimation(BuildContext context) {
    daColorAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.leftForDa, tween: Tween(begin: 1.0, end: 0.0))
        .parent
        .animatedBy(daColorController);
    if (daColorController.isCompleted) {
      daColorController.reverse();
    } else {
      daColorController.forward();
    }
  }

  void startDaTextAnimation(BuildContext context) {
    daTextAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.leftForDa,
            tween: Tween(
                begin: Sizes().ratioWithScrWidth(context, 0.04),
                end: -Sizes().ratioWithScrWidth(context, 0.074)))
        .parent
        .animatedBy(daTextController);
    if (daTextController.isCompleted) {
      daTextController.reverse();
    } else {
      daTextController.forward();
    }
  }

  void startPfSwitchController(BuildContext context) {
    pfSwitchAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.leftForPf,
            tween: Tween(
                begin: Sizes().ratioWithScrWidth(context, 0.11),
                end: Sizes().ratioWithScrWidth(context, 0.02)))
        .parent
        .animatedBy(pfSwitchController);
    if (pfSwitchController.isCompleted) {
      pfSwitchController.reverse();
    } else {
      pfSwitchController.forward();
    }
  }

  void startPfColorAnimation(BuildContext context) {
    pfColorAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.leftForPf, tween: Tween(begin: 1.0, end: 0.0))
        .parent
        .animatedBy(pfColorController);
    if (pfColorController.isCompleted) {
      pfColorController.reverse();
    } else {
      pfColorController.forward();
    }
  }

  void startPfTextAnimation(BuildContext context) {
    pfTextAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.leftForPf,
            tween: Tween(
                begin: Sizes().ratioWithScrWidth(context, 0.04),
                end: -Sizes().ratioWithScrWidth(context, 0.074)))
        .parent
        .animatedBy(pfTextController);
    if (pfTextController.isCompleted) {
      pfTextController.reverse();
    } else {
      pfTextController.forward();
    }
  }

  void startEsiSwitchController(BuildContext context) {
    esiSwitchAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.leftForEsi,
            tween: Tween(
                begin: Sizes().ratioWithScrWidth(context, 0.11),
                end: Sizes().ratioWithScrWidth(context, 0.02)))
        .parent
        .animatedBy(esiSwitchController);
    if (esiSwitchController.isCompleted) {
      esiSwitchController.reverse();
    } else {
      esiSwitchController.forward();
    }
  }

  void startEsiColorAnimation(BuildContext context) {
    esiColorAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.leftForEsi, tween: Tween(begin: 1.0, end: 0.0))
        .parent
        .animatedBy(esiColorController);
    if (esiColorController.isCompleted) {
      esiColorController.reverse();
    } else {
      esiColorController.forward();
    }
  }

  void startEsiTextAnimation(BuildContext context) {
    esiTextAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.leftForEsi,
            tween: Tween(
                begin: Sizes().ratioWithScrWidth(context, 0.04),
                end: -Sizes().ratioWithScrWidth(context, 0.074)))
        .parent
        .animatedBy(esiTextController);
    if (esiTextController.isCompleted) {
      esiTextController.reverse();
    } else {
      esiTextController.forward();
    }
  }

  void startTdsSwitchController(BuildContext context) {
    tdsSwitchAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.leftForTds,
            tween: Tween(
                begin: Sizes().ratioWithScrWidth(context, 0.11),
                end: Sizes().ratioWithScrWidth(context, 0.02)))
        .parent
        .animatedBy(tdsSwitchController);
    if (tdsSwitchController.isCompleted) {
      tdsSwitchController.reverse();
    } else {
      tdsSwitchController.forward();
    }
  }

  void startTdsColorAnimation(BuildContext context) {
    tdsColorAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.leftForTds, tween: Tween(begin: 1.0, end: 0.0))
        .parent
        .animatedBy(tdsColorController);
    if (tdsColorController.isCompleted) {
      tdsColorController.reverse();
    } else {
      tdsColorController.forward();
    }
  }

  void startTdsTextAnimation(BuildContext context) {
    tdsTextAnimation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.leftForTds,
            tween: Tween(
                begin: Sizes().ratioWithScrWidth(context, 0.04),
                end: -Sizes().ratioWithScrWidth(context, 0.074)))
        .parent
        .animatedBy(tdsTextController);
    if (tdsTextController.isCompleted) {
      tdsTextController.reverse();
    } else {
      tdsTextController.forward();
    }
  }

  @override
  void dispose() {
    daSwitchController.dispose();
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
            Spacing().verticalSpace(context, 0.025),
            Text(
              'Salary Settings',
              style: txtStyle(size: 18, weight: FontWeight.w600),
            ),
            Spacing().verticalSpace(context, 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'DA and HRA',
                  style: txtStyle(size: 18, weight: FontWeight.w600),
                ),
                GestureDetector(
                  onTap: () {
                    startDaSwitchController(context);
                    startDaColorAnimation(context);
                    startDaTextAnimation(context);
                  },
                  child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
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
                            animation: daColorController,
                            builder: (context, child) {
                              return Container(
                                width: Sizes().ratioWithScrWidth(context, 0.4),
                                height:
                                    Sizes().ratioWithScrHeight(context, 0.05),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: const [
                                      Colors.green,
                                      Colors.red
                                    ], stops: [
                                      daColorAnimation.value
                                          .get(AnimProps.leftForDa),
                                      0.01
                                    ]),
                                    borderRadius: BorderRadius.circular(20)),
                              );
                            },
                          ),
                          AnimatedBuilder(
                            animation: daTextController,
                            builder: (context, child) {
                              return Positioned(
                                  left: daTextAnimation.value
                                      .get(AnimProps.leftForDa),
                                  child: Row(
                                    children: [
                                      const Text('ON'),
                                      Spacing().horizontalSpace(context, 0.12),
                                      const Text('OFF')
                                    ],
                                  ));
                            },
                          ),
                          AnimatedBuilder(
                            animation: daSwitchController,
                            builder: (context, child) {
                              return Positioned(
                                left: daSwitchAnimation.value
                                    .get(AnimProps.leftForDa),
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
            Spacing().verticalSpace(context, 0.025),
            Text(
              'DA (%)',
              style: txtStyle(size: 14, weight: FontWeight.w400),
            ),
            Spacing().verticalSpace(context, 0.02),
            const TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Spacing().verticalSpace(context, 0.025),
            const Text('HRA (%)'),
            Spacing().verticalSpace(context, 0.02),
            const TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Spacing().verticalSpace(context, 0.038),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Provident Fund Settings',
                  style: txtStyle(size: 18, weight: FontWeight.w600),
                ),
                GestureDetector(
                  onTap: () {
                    startPfSwitchController(context);
                    startPfColorAnimation(context);
                    startPfTextAnimation(context);
                  },
                  child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
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
                            animation: pfColorController,
                            builder: (context, child) {
                              return Container(
                                width: Sizes().ratioWithScrWidth(context, 0.4),
                                height:
                                    Sizes().ratioWithScrHeight(context, 0.05),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: const [
                                      Colors.green,
                                      Colors.red
                                    ], stops: [
                                      pfColorAnimation.value
                                          .get(AnimProps.leftForPf),
                                      0.01
                                    ]),
                                    borderRadius: BorderRadius.circular(20)),
                              );
                            },
                          ),
                          AnimatedBuilder(
                            animation: pfTextController,
                            builder: (context, child) {
                              return Positioned(
                                  left: pfTextAnimation.value
                                      .get(AnimProps.leftForPf),
                                  child: Row(
                                    children: [
                                      const Text('ON'),
                                      Spacing().horizontalSpace(context, 0.12),
                                      const Text('OFF')
                                    ],
                                  ));
                            },
                          ),
                          AnimatedBuilder(
                            animation: pfSwitchController,
                            builder: (context, child) {
                              return Positioned(
                                left: pfSwitchAnimation.value
                                    .get(AnimProps.leftForPf),
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
            Spacing().verticalSpace(context, 0.025),
            const Text('Employee Share (%)'),
            Spacing().verticalSpace(context, 0.02),
            const TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Spacing().verticalSpace(context, 0.025),
            const Text('Organization Share (%)'),
            Spacing().verticalSpace(context, 0.025),
            const TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Spacing().verticalSpace(context, 0.035),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'ESI Settings',
                  style: txtStyle(size: 18, weight: FontWeight.w600),
                ),
                GestureDetector(
                  onTap: () {
                    startEsiSwitchController(context);
                    startEsiColorAnimation(context);
                    startEsiTextAnimation(context);
                  },
                  child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
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
                            animation: esiColorController,
                            builder: (context, child) {
                              return Container(
                                width: Sizes().ratioWithScrWidth(context, 0.4),
                                height:
                                    Sizes().ratioWithScrHeight(context, 0.05),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: const [
                                      Colors.green,
                                      Colors.red
                                    ], stops: [
                                      esiColorAnimation.value
                                          .get(AnimProps.leftForEsi),
                                      0.01
                                    ]),
                                    borderRadius: BorderRadius.circular(20)),
                              );
                            },
                          ),
                          AnimatedBuilder(
                            animation: esiTextController,
                            builder: (context, child) {
                              return Positioned(
                                  left: esiTextAnimation.value
                                      .get(AnimProps.leftForEsi),
                                  child: Row(
                                    children: [
                                      const Text('ON'),
                                      Spacing().horizontalSpace(context, 0.12),
                                      const Text('OFF')
                                    ],
                                  ));
                            },
                          ),
                          AnimatedBuilder(
                            animation: esiSwitchController,
                            builder: (context, child) {
                              return Positioned(
                                left: esiSwitchAnimation.value
                                    .get(AnimProps.leftForEsi),
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
            Spacing().verticalSpace(context, 0.025),
            const Text('Employee Share (%)'),
            Spacing().verticalSpace(context, 0.02),
            const TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Spacing().verticalSpace(context, 0.025),
            const Text('Organization Share (%)'),
            Spacing().verticalSpace(context, 0.02),
            const TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Spacing().verticalSpace(context, 0.035),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'TDS',
                  style: txtStyle(size: 18, weight: FontWeight.w600),
                ),
                GestureDetector(
                  onTap: () {
                    startTdsSwitchController(context);
                    startTdsColorAnimation(context);
                    startTdsTextAnimation(context);
                  },
                  child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
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
                            animation: tdsColorController,
                            builder: (context, child) {
                              return Container(
                                width: Sizes().ratioWithScrWidth(context, 0.4),
                                height:
                                    Sizes().ratioWithScrHeight(context, 0.05),
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: const [
                                      Colors.green,
                                      Colors.red
                                    ], stops: [
                                      tdsColorAnimation.value
                                          .get(AnimProps.leftForTds),
                                      0.01
                                    ]),
                                    borderRadius: BorderRadius.circular(20)),
                              );
                            },
                          ),
                          AnimatedBuilder(
                            animation: tdsTextController,
                            builder: (context, child) {
                              return Positioned(
                                  left: tdsTextAnimation.value
                                      .get(AnimProps.leftForTds),
                                  child: Row(
                                    children: [
                                      const Text('ON'),
                                      Spacing().horizontalSpace(context, 0.12),
                                      const Text('OFF')
                                    ],
                                  ));
                            },
                          ),
                          AnimatedBuilder(
                            animation: tdsSwitchController,
                            builder: (context, child) {
                              return Positioned(
                                left: tdsSwitchAnimation.value
                                    .get(AnimProps.leftForTds),
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
            Spacing().verticalSpace(context, 0.025),
            const Text('Salary From'),
            Spacing().verticalSpace(context, 0.02),
            const TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Spacing().verticalSpace(context, 0.025),
            const Text('Salary To'),
            Spacing().verticalSpace(context, 0.02),
            const TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Spacing().verticalSpace(context, 0.025),
            const Text('%'),
            Spacing().verticalSpace(context, 0.02),
            const TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Spacing().verticalSpace(context, 0.02),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
                onPressed: () {},
                child: const Icon(Icons.delete_outline)),
            Spacing().verticalSpace(context, 0.02),
            const Text('Salary From'),
            Spacing().verticalSpace(context, 0.02),
            const TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Spacing().verticalSpace(context, 0.02),
            const Text('Salary To'),
            Spacing().verticalSpace(context, 0.02),
            const TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Spacing().verticalSpace(context, 0.02),
            const Text('%'),
            Spacing().verticalSpace(context, 0.02),
            const TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            Spacing().verticalSpace(context, 0.02),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
                onPressed: () {},
                child: const Icon(Icons.delete_outline)),
            Spacing().verticalSpace(context, 0.01),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange)),
                onPressed: () {},
                child: const Icon(Icons.add)),
            Spacing().verticalSpace(context, 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: Sizes().ratioWithScrWidth(context, 0.4),
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

                        setState(() {});
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
            Spacing().verticalSpace(context, 0.02),
          ],
        ),
      ],
    );
  }
}
