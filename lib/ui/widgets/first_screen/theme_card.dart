import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubit/theme_cubit.dart';

class ThemeCard extends StatelessWidget {
  const ThemeCard({
    super.key,
    required this.mode,
    required this.icon,
  });

  final IconData icon;
  final ThemeMode mode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeModeState>(
        builder: (BuildContext context, ThemeModeState state) {
      return Card(
        elevation: 2,
        shadowColor: Theme.of(context).colorScheme.shadow,
        color: state.themeMode == mode
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.surface,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: InkWell(
          onTap: () => BlocProvider.of<ThemeCubit>(context).getTheme(
            ThemeModeState(themeMode: mode),
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          child: Icon(
            icon,
            size: 32,
            color: state.themeMode != mode
                ? Theme.of(context).colorScheme.primary
                : Colors.white,
          ),
        ),
      );
    });
  }
}
