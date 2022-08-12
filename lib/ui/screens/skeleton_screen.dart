import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/bottom_nav_cubit.dart';
import '../widgets/app_bar_gone.dart';
import '../widgets/bottom_nav_bar.dart';
import 'first_screen.dart';
import 'second_screen.dart';

class SkeletonScreen extends StatelessWidget {
  const SkeletonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const List<Widget> pageNavigation = <Widget>[
      FirstScreen(),
      SecondScreen(),
    ];

    return BlocProvider<BottomNavCubit>(
        create: (BuildContext context) => BottomNavCubit(),
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: const AppBarGone(),

          /// When switching between tabs this will fade the old
          /// layout out and the new layout in.
          body: BlocBuilder<BottomNavCubit, int>(
            builder: (BuildContext context, int state) {
              return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: pageNavigation.elementAt(state));
            },
          ),

          bottomNavigationBar: const BottomNavBar(),
          backgroundColor: Theme.of(context).colorScheme.background,
        ));
  }
}
