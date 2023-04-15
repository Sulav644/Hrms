import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:hrms_clone/hrms_clone/domain/components/project_list.dart';
import 'package:hrms_clone/hrms_clone/domain/components/status_change_banner.dart';

import '../../../core/utils.dart';
import '../../../home_page.dart';
import 'detail_banner.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Spacing().verticalSpace(context, 0.025),
      Text(
        'Welcome User!',
        style: txtStyle(size: 20, weight: FontWeight.bold),
      ),
      Spacing().verticalSpace(context, 0.04),
      ...bannerList
          .map((e) => DetailBannerWidget(
                e: e,
              ))
          .toList(),
      ...statusChangeBannerList
          .map(
            (e) => StatusChangeBannerWidget(e: e),
          )
          .toList(),
      ProjectList(),
      Spacing().verticalSpace(context, 0.1),
    ]);
  }
}
