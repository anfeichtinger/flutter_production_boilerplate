import 'package:hydrated_bloc/hydrated_bloc.dart';

class BottomNavCubit extends HydratedCubit<int> {
  BottomNavCubit() : super(0);

  void updateIndex(int index) => emit(index);

  void getFirstScreen() => emit(0);

  void getSecondScreen() => emit(1);

  @override
  int? fromJson(Map<String, dynamic> json) {
    return json['pageIndex'] as int?;
  }

  @override
  Map<String, dynamic>? toJson(int state) {
    return <String, int>{'pageIndex': state};
  }
}
