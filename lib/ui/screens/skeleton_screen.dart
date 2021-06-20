import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timebox/cubit/date_time_cubit.dart';
import 'package:timebox/ui/widgets/app_bar_gone.dart';

class SkeletonScreen extends StatelessWidget {
  const SkeletonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BottomNavCubit>(
      create: (context) => BottomNavCubit(),
      child: BlocBuilder<BottomNavCubit, int>(
        builder: (BuildContext context, int state) {
          return Scaffold(
            appBar: const AppBarGone(),
            body: ListView.builder(itemBuilder: itemBuilder),
            bottomNavigationBar: BottomAppBar(),
          );
        },
      ),
    );
  }
}
