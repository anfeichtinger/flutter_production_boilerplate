import 'package:easy_localization/easy_localization.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/config/style.dart';

import '../../cubit/bottom_nav_cubit.dart';

class BottomNavBar extends StatelessWidget {
  /// It is okay not to use a const constructor here.
  /// Using const breaks updating of selected BottomNavigationBarItem.
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      elevation: Theme.of(context).bottomNavigationBarTheme.elevation,
      shadowColor: Theme.of(context).colorScheme.shadow,
      color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.only(
          topLeft: Style.radiusLg,
          topRight: Style.radiusLg,
        ),
        side: BorderSide(
          color: Theme.of(context).shadowColor,
          strokeAlign: BorderSide.strokeAlignInside,
        ),
      ),
      child: BlocBuilder<BottomNavCubit, int>(
          builder: (BuildContext context, int state) {
        return BottomNavigationBar(
          currentIndex: state,
          onTap: (int index) =>
              context.read<BottomNavCubit>().updateIndex(index),
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: Colors.transparent,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: const Icon(FluentIcons.home_24_regular),
              label: tr('bottom_nav_first'),
            ),
            BottomNavigationBarItem(
              icon: const Icon(FluentIcons.info_24_regular),
              label: tr('bottom_nav_second'),
            ),
          ],
        );
      }),
    );
  }
}
