import 'package:freezed_annotation/freezed_annotation.dart';

part 'holiday_date.freezed.dart';

@freezed
class HolidayDate with _$HolidayDate {
  const HolidayDate._();
  const factory HolidayDate({
    String? name,
    String? date,
  }) = _HolidayDate;
}
