import 'package:bloc/bloc.dart';

class DateTimeCubit extends Cubit<DateTime> {
  DateTimeCubit() : super(DateTime.now());

  void selectDateTime(DateTime dateTime) => emit(dateTime);
}
