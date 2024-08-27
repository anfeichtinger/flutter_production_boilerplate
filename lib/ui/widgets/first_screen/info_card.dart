import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_production_boilerplate/config/style.dart';

class InfoCard extends StatelessWidget {
  const InfoCard(
      {super.key,
      required this.title,
      required this.content,
      required this.icon,
      required this.isPrimaryColor});

  final String title;
  final String content;
  final IconData icon;
  final bool isPrimaryColor;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = isPrimaryColor
        ? Theme.of(context).primaryTextTheme
        : Theme.of(context).textTheme;

    return Card(
      elevation: 0,
      shadowColor: Theme.of(context).colorScheme.shadow,
      color: isPrimaryColor
          ? Theme.of(context).colorScheme.primary
          : Theme.of(context).colorScheme.surfaceContainer,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Style.radiusMd),
        side: BorderSide(color: Theme.of(context).shadowColor),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 28,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  tr(title),
                  style: textTheme.displayMedium,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              tr(content),
              style: textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            Icon(
              icon,
              size: 36,
              color: textTheme.bodyMedium!.color,
            ),
          ],
        ),
      ),
    );
  }
}
