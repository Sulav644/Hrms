import 'package:flutter/material.dart';
import '../../../core/utils.dart';

class WelcomeBoard extends StatelessWidget {
  const WelcomeBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: Sizes().scrWidth(context),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Color.fromARGB(255, 141, 140, 140), offset: Offset(0, 0.8))
        ]),
        child: Column(
          children: [
            Spacing().verticalSpace(context, 0.01),
            Row(children: [
              Spacing().horizontalSpace(context, 0.02),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/member_list/download.jpg',
                  width: Sizes().ratioWithScrWidth(context, 0.18),
                  height: Sizes().ratioWithScrWidth(context, 0.18),
                  fit: BoxFit.cover,
                ),
              ),
              Spacing().horizontalSpace(context, 0.04),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  'Welcome, John Doe',
                  style: txtStyle(size: 24, weight: FontWeight.w700),
                ),
                Spacing().verticalSpace(context, 0.02),
                Text(
                  'Monday, 20 May 2019',
                  style: txtStyle(
                      color: const Color.fromARGB(255, 119, 117, 117),
                      size: 18,
                      weight: FontWeight.w400),
                )
              ])
            ]),
            Spacing().verticalSpace(context, 0.032)
          ],
        ));
  }
}
