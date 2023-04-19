import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hrms_clone/hrms_clone/project_detail_&_member/data/member_list.dart';

import '../../../core/utils.dart';

class FilesTile extends StatelessWidget {
  final UploadedFile e;
  const FilesTile({super.key, required this.e});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: Sizes().ratioWithScrHeight(context, 0.015)),
      child: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 240, 237, 237),
                        border: Border.all(
                            color: Color.fromARGB(255, 141, 139, 139),
                            width: 0.5),
                        borderRadius: BorderRadius.circular(6)),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: Sizes().ratioWithScrHeight(context, 0.005),
                          left: Sizes().ratioWithScrHeight(context, 0.007),
                          right: Sizes().ratioWithScrHeight(context, 0.007),
                          bottom: Sizes().ratioWithScrHeight(context, 0.01)),
                      child: Icon(
                        Icons.picture_as_pdf,
                        color: Color.fromARGB(255, 77, 76, 76),
                        size: 20,
                      ),
                    )),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                    width: Sizes().ratioWithScrWidth(context, 0.5),
                    child: Text(
                      e.title!,
                      overflow: TextOverflow.ellipsis,
                      style: txtStyle(size: 15, weight: FontWeight.w400),
                    ),
                  ),
                  Spacing().verticalSpace(context, 0.015),
                  Row(children: [
                    Text(
                      e.name!,
                      style: txtStyle(
                          size: 10,
                          color: Colors.orange,
                          underLine: TextDecoration.underline),
                    ),
                    Text(
                      ' ${e.date}',
                      style: txtStyle(
                          size: 10, color: Color.fromARGB(255, 141, 139, 139)),
                    )
                  ]),
                  Spacing().verticalSpace(context, 0.015),
                  Text(
                    'Size: ${e.size}Mb',
                    style: txtStyle(
                        size: 12,
                        color: Color.fromARGB(255, 141, 139, 139),
                        weight: FontWeight.w500),
                  )
                ]),
                PopupMenuButton(
                  icon: Icon(Icons.more_horiz),
                  padding: EdgeInsets.zero,
                  offset: Offset(1, Sizes().ratioWithScrHeight(context, 0.06)),
                  itemBuilder: (context) {
                    return [
                      ...[
                        'Download',
                        'Share',
                        'Delete'
                      ].map((e) => PopupMenuItem(
                            child: Text(
                              e,
                              style: txtStyle(size: 12),
                            ),
                            padding: EdgeInsets.only(
                                top: Sizes().ratioWithScrWidth(context, 0.02),
                                left: Sizes().ratioWithScrWidth(context, 0.05),
                                bottom:
                                    Sizes().ratioWithScrWidth(context, 0.02),
                                right: Sizes().ratioWithScrWidth(context, 0.1)),
                            height: 0,
                          ))
                    ];
                  },
                )
              ]),
          Spacing().verticalSpace(context, 0.02),
          Divider(
            color: Color.fromARGB(255, 190, 189, 189),
          )
        ],
      ),
    );
  }
}
