import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String content;
  final IconData icon;
  final bool isPrimaryColor;

  const InfoCard(
      {Key? key,
      required this.title,
      required this.content,
      required this.icon,
      required this.isPrimaryColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = isPrimaryColor
        ? Theme.of(context).primaryTextTheme
        : Theme.of(context).textTheme;
    return Card(
      elevation: 2,
      color: isPrimaryColor
          ? Theme.of(context).primaryColor
          : Theme.of(context).cardColor,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tr(title),
              style: textTheme.headline6!.apply(fontFamily: 'Poppins'),
            ),
            const SizedBox(height: 10),
            Text(
              tr(content),
              style: textTheme.subtitle2,
            ),
            const Spacer(),
            Icon(
              icon,
              size: 32,
              color: textTheme.subtitle2!.color,
            ),
          ],
        ),
      ),
    );
  }
}
