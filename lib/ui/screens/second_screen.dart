import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../widgets/header.dart';
import '../widgets/second_screen/grid_item.dart';
import '../widgets/second_screen/link_card.dart';
import '../widgets/second_screen/text_divider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.background,
      child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          physics: const BouncingScrollPhysics(),
          children: <Widget>[
            const Header(text: 'bottom_nav_second'),
            LinkCard(
                title: 'github_card_title',
                icon: Ionicons.logo_github,
                url: Uri.parse(
                    'https://github.com/anfeichtinger/flutter_production_boilerplate')),
            const TextDivider(text: 'author_divider_title'),
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              childAspectRatio: 2 / 1.15,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              children: <GridItem>[
                GridItem(
                  title: 'instagram_card_title',
                  icon: Ionicons.logo_instagram,
                  url: Uri.parse('https://www.instagram.com/anfeichtinger'),
                ),
                GridItem(
                  title: 'twitter_card_title',
                  icon: Ionicons.logo_twitter,
                  url: Uri.parse('https://twitter.com/_pharrax'),
                ),
                GridItem(
                  title: 'donate_card_title',
                  icon: Ionicons.heart_outline,
                  url: Uri.parse(
                      'https://www.paypal.com/donate?hosted_button_id=EE3W7PS6AHEP8&source=url'),
                ),
                GridItem(
                  title: 'website_card_title',
                  icon: Ionicons.desktop_outline,
                  url: Uri.parse('https://feichtinger.dev'),
                ),
              ],
            ),
            const TextDivider(text: 'packages_divider_title'),
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              childAspectRatio: 2 / 1.15,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              children: <GridItem>[
                GridItem(
                  title: 'flutter_bloc',
                  icon: Ionicons.apps_outline,
                  url: Uri.parse(
                      'https://pub.dev/packages/flutter_bloc/versions/8.0.1'),
                  version: '8.0.1',
                ),
                GridItem(
                  title: 'bloc',
                  icon: Ionicons.grid_outline,
                  url:
                      Uri.parse('https://pub.dev/packages/bloc/versions/8.1.0'),
                  version: '8.1.0',
                ),
                GridItem(
                  title: 'hydrated_bloc',
                  icon: Ionicons.folder_open_outline,
                  url: Uri.parse(
                      'https://pub.dev/packages/hydrated_bloc/versions/8.1.0'),
                  version: '8.1.0',
                ),
                GridItem(
                  title: 'equatable',
                  icon: Ionicons.git_compare_outline,
                  url: Uri.parse(
                      'https://pub.dev/packages/equatable/versions/2.0.3'),
                  version: '2.0.3',
                ),
                GridItem(
                  title: 'lints',
                  icon: Ionicons.options_outline,
                  url: Uri.parse(
                      'https://pub.dev/packages/flutter_lints/versions/2.0.1'),
                  version: '2.0.1',
                ),
                GridItem(
                  title: 'path_provider',
                  icon: Ionicons.extension_puzzle_outline,
                  url: Uri.parse(
                      'https://pub.dev/packages/path_provider/versions/2.0.11'),
                  version: '2.0.11',
                ),
                GridItem(
                  title: 'flutter_displaymode',
                  icon: Ionicons.speedometer_outline,
                  url: Uri.parse(
                      'https://pub.dev/packages/flutter_displaymode/versions/0.4.0'),
                  version: '0.4.0',
                ),
                GridItem(
                  title: 'easy_localization',
                  icon: Ionicons.language_outline,
                  url: Uri.parse(
                      'https://pub.dev/packages/easy_localization/versions/3.0.1'),
                  version: '3.0.1',
                ),
                GridItem(
                  title: 'hive',
                  icon: Ionicons.leaf_outline,
                  url:
                      Uri.parse('https://pub.dev/packages/hive/versions/2.2.3'),
                  version: '2.2.3',
                ),
                GridItem(
                  title: 'url_launcher',
                  icon: Ionicons.share_outline,
                  url: Uri.parse(
                      'https://pub.dev/packages/url_launcher/versions/6.1.5'),
                  version: '6.1.5',
                ),
                GridItem(
                  title: 'ionicons',
                  icon: Ionicons.logo_ionic,
                  url: Uri.parse(
                      'https://pub.dev/packages/ionicons/versions/0.2.1'),
                  version: '0.2.1',
                ),
              ],
            ),
            const SizedBox(height: 36),
          ]),
    );
  }
}
