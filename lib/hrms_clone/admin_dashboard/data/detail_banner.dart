import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_banner.freezed.dart';

@freezed
class DetailBanner with _$DetailBanner {
  const DetailBanner._();
  const factory DetailBanner({
    IconData? icon,
    int? count,
    String? title,
  }) = _DetailBanner;
}

@freezed
class RateChanged with _$RateChanged {
  const RateChanged._();
  const factory RateChanged.increased() = _Increased;
  const factory RateChanged.decreased() = _Decreased;
}

@freezed
class StatusChangeBanner with _$StatusChangeBanner {
  const StatusChangeBanner._();
  const factory StatusChangeBanner({
    String? title,
    double? rateChange,
    RateChanged? valueChanged,
    @Default(false) bool isPriceCount,
    int? currentCount,
    String? totalOrPrevious,
    int? totalCount,
  }) = _StatusChangeBanner;
}

@freezed
class ProjectDetail with _$ProjectDetail {
  const ProjectDetail._();
  const factory ProjectDetail({
    String? title,
    int? id,
    int? openTask,
    int? completedTask,
    double? levelBar,
  }) = _ProjectDetail;
}

@freezed
class ProjectDetails with _$ProjectDetails {
  const ProjectDetails._();
  const factory ProjectDetails({
    required String title,
    required int id,
  }) = _ProjectDetails;
}
