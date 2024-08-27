import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_production_boilerplate/config/style.dart';
import 'package:url_launcher/url_launcher.dart';

class GridItem extends StatelessWidget {
  /// Named parameters are preferred, they make the code easier to understand.
  const GridItem(
      {super.key,
      required this.title,
      required this.icon,
      required this.url,
      this.iconColor,
      this.version});

  final String title;
  final IconData icon;
  final Color? iconColor;
  final Uri url;
  final String? version;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shadowColor: Theme.of(context).colorScheme.shadow,
      color: Theme.of(context).colorScheme.surfaceContainer,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Style.radiusMd),
        side: BorderSide(color: Theme.of(context).shadowColor),
      ),
      child: ListTile(
        onTap: _launchUrl,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Style.radiusMd),
        ),
        contentPadding: const EdgeInsets.all(0),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              icon,
              color: iconColor ?? Theme.of(context).colorScheme.primary,
              size: 28,
            ),
            const SizedBox(height: 4),
            Text(
              tr(title),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium!,
            ),
            if (version != null)
              Column(
                children: <Widget>[
                  const SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Text(
                      version!,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                ],
              )
            else
              const SizedBox(),
          ],
        ),
      ),
    );
  }

  /// Example: Use the url_launcher package to open the browser
  Future<bool> _launchUrl() async => await canLaunchUrl(url)
      ? await launchUrl(url)
      : throw Exception('Could not launch $url');
}
