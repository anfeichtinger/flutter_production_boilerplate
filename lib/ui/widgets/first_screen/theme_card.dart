import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/config/style.dart';

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
      return Expanded(
        child: Card(
          elevation: 0,
          shadowColor: Theme.of(context).colorScheme.shadow,
          color: state.themeMode == mode
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.surfaceContainer,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Style.radiusMd),
            side: BorderSide(color: Theme.of(context).shadowColor),
          ),
          child: SizedBox(
            height: 52,
            child: InkWell(
              onTap: () => BlocProvider.of<ThemeCubit>(context).getTheme(
                ThemeModeState(themeMode: mode),
              ),
              borderRadius: const BorderRadius.all(Style.radiusMd),
              child: Icon(
                icon,
                size: 32,
                color: state.themeMode != mode
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
        ),
      );
    });
  }
}
