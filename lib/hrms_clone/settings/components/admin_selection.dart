import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/utils.dart';
import '../domain/check_box_cubit.dart';

class AdminSelection extends StatelessWidget {
  final String title;
  final String adminState;
  const AdminSelection({
    super.key,
    required this.title,
    required this.adminState,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<AdminSelectCubit>().addData(title),
      child: Stack(
        children: [
          Container(
              width: Sizes().scrWidth(context),
              height: Sizes().ratioWithScrHeight(context, 0.06),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: adminState.contains(title)
                      ? const Color.fromARGB(255, 223, 219, 219)
                      : Colors.white,
                  border: const Border(
                      left:
                          BorderSide(color: Color.fromARGB(255, 199, 195, 195)),
                      right: BorderSide(
                          color: Color.fromARGB(255, 199, 195, 195)))),
              child: Padding(
                padding: EdgeInsets.only(
                    left: Sizes().ratioWithScrWidth(context, 0.05)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title),
                    if (adminState.contains(title))
                      Row(
                        children: [
                          editWiget(Icons.edit),
                          Spacing().horizontalSpace(context, 0.015),
                          editWiget(Icons.delete),
                          Spacing().horizontalSpace(context, 0.04),
                        ],
                      )
                  ],
                ),
              )),
          if (adminState.contains(title))
            Container(
              width: 4,
              height: Sizes().ratioWithScrHeight(context, 0.06),
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
                color: Colors.orange,
              ),
            ),
        ],
      ),
    );
  }

  Widget editWiget(IconData icon) => Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 240, 238, 238),
            border: Border.all(color: const Color.fromARGB(255, 170, 167, 167)),
            borderRadius: BorderRadius.circular(100)),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Icon(
            icon,
            color: const Color.fromARGB(255, 172, 168, 168),
            size: 14,
          ),
        ),
      );
}
