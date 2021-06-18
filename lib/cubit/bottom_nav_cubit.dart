import 'package:bloc/bloc.dart';

class BottomNavCubit extends Cubit<int> {
  BottomNavCubit() : super(0);

  void updateIndex(int index) => emit(index);

  void getFirstScreen() => emit(0);

  void getSecondScreen() => emit(1);
}
