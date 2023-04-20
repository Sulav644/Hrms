import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'working_status_detail.freezed.dart';

@freezed
class WorkingStatusDetail with _$WorkingStatusDetail {
  const WorkingStatusDetail._();
  const factory WorkingStatusDetail({
    IconData? icon,
    String? workStatus,
    AssetImage? person,
    List<AssetImage>? persons,
    bool? showPerson,
  }) = _WorkingStatusDetail;
}
