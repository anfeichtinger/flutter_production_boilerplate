part of 'theme_cubit.dart';

@immutable
class ThemeModeState extends Equatable {
  const ThemeModeState({this.themeMode = ThemeMode.system});

  final ThemeMode? themeMode;

  @override
  List<Object?> get props => <Object?>[themeMode];
}
