import 'package:flutter/material.dart';

class BottomApplicationBar extends StatelessWidget {
  final List<Widget> leftWidgets;
  final List<Widget> rightWidgets;

  const BottomApplicationBar(
      {Key? key, required this.leftWidgets, required this.rightWidgets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Theme.of(context).bottomAppBarColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: BottomAppBar(
        color: Theme.of(context).bottomAppBarColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(children: leftWidgets),
              const Spacer(),
              Row(children: rightWidgets),
            ],
          ),
        ),
      ),
    );
  }
}
