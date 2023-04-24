import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hrms_clone/hrms_clone/holidays/data/holiday_date.dart';

class AddHolidayCubit extends Cubit<List<HolidayDate>> {
  AddHolidayCubit()
      : super([
          const HolidayDate(name: 'Christmas', date: '2023-12-25'),
        ]);
  bool checkParameters(HolidayDate holidayDate) {
    bool validParams = false;
    if (holidayDate.name == '' || holidayDate.date == '') {
      validParams = false;
    } else {
      validParams = true;
    }
    return validParams;
  }

  void addHoliday(HolidayDate holidayDate) => emit([...state, holidayDate]);
  void removeHoliday(HolidayDate holidayDate) {
    List<HolidayDate> filteredList = [];
    for (var element in state) {
      if (holidayDate != element) {
        filteredList.add(element);
      }
    }
    emit([...filteredList]);
  }
}
