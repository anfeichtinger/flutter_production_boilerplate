import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class TextDivider extends StatelessWidget {
  final String text;

  const TextDivider({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, top: 24, right: 24, bottom: 10),
      child: Row(children: <Widget>[
        Expanded(child: Divider(color: Theme.of(context).dividerColor)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            tr(text),
            style: Theme.of(context).textTheme.button,
          ),
        ),
        Expanded(child: Divider(color: Theme.of(context).dividerColor)),
      ]),
    );
  }
}
