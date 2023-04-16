import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_list.freezed.dart';

@freezed
class MemberList with _$MemberList {
  const MemberList._();
  const factory MemberList({
    String? image,
    String? name,
    String? designation,
  }) = _MemberList;
}
