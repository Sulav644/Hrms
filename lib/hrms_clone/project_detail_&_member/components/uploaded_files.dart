import 'package:flutter/material.dart';
import 'package:hrms_clone/hrms_clone/project_detail_&_member/components/files_tile.dart';
import '../../../core/utils.dart';
import '../core/components.dart';
import '../data/member_list.dart';

List<UploadedFile> uploadedFiles = [
  const UploadedFile(
      title: 'AHA Selfcare Mobile Application Test-Cases.xls',
      name: 'John Doe',
      date: 'May 31st at 6:53 PM',
      size: 14.8),
  const UploadedFile(
      title: 'AHA Selfcare Mobile Application Test-Cases.xls',
      name: 'Richard Miles',
      date: 'May 31st at 6:53 PM',
      size: 14.8),
];

class UploadedFilesWidget extends StatelessWidget {
  const UploadedFilesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Components().detailCard(
        context: context,
        padWid: 0.07,
        padHeight: 0.04,
        alignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Uploaded files',
            style: txtStyle(size: 20, weight: FontWeight.w500),
          ),
          Spacing().verticalSpace(context, 0.03),
          ...uploadedFiles
              .map(
                (e) => FilesTile(e: e),
              )
              .toList()
        ]);
  }
}
