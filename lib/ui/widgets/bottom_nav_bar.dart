import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/cubit/bottom_nav_cubit.dart';
import 'package:ionicons/ionicons.dart';

class BottomNavBar extends StatelessWidget {
  /// It is okay not to use a const constructor here.
  /// Using const breaks updating of selected BottomNavigationBarItem.
  // ignore: prefer_const_constructors_in_immutables
  BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 2, right: 8, left: 8),
      elevation: 4,
      color: Theme.of(context).bottomAppBarColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: BottomNavigationBar(
        currentIndex: context.read<BottomNavCubit>().state,
        onTap: (index) => context.read<BottomNavCubit>().updateIndex(index),
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        backgroundColor: Colors.transparent,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).textTheme.bodyText1!.color,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Ionicons.home_outline),
            label: tr('bottom_nav_first'),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Ionicons.information_circle_outline),
            label: tr('bottom_nav_second'),
          ),
        ],
      ),
    );
  }
}
