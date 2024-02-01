import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';


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
                icon: FluentIcons.diversity_24_regular,
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
                  icon: FluentIcons.camera_switch_24_regular,
                  url: Uri.parse('https://www.instagram.com/anfeichtinger'),
                ),
                GridItem(
                  title: 'twitter_card_title',
                  icon: FluentIcons.airplane_take_off_24_regular,
                  url: Uri.parse('https://twitter.com/_pharrax'),
                ),
                GridItem(
                  title: 'donate_card_title',
                  icon: FluentIcons.heart_24_regular,
                  url: Uri.parse(
                      'https://www.paypal.com/donate?hosted_button_id=EE3W7PS6AHEP8&source=url'),
                ),
                GridItem(
                  title: 'website_card_title',
                  icon: FluentIcons.desktop_24_regular,
                  url: Uri.parse('https://www.feichtinger.dev'),
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
                  icon: FluentIcons.apps_24_regular,
                  url: Uri.parse(
                      'https://pub.dev/packages/flutter_bloc/versions/8.1.3'),
                  version: '8.1.3',
                ),
                GridItem(
                  title: 'bloc',
                  icon: FluentIcons.grid_24_regular,
                  url:
                      Uri.parse('https://pub.dev/packages/bloc/versions/8.1.2'),
                  version: '8.1.2',
                ),
                GridItem(
                  title: 'hydrated_bloc',
                  icon: FluentIcons.folder_open_24_regular,
                  url: Uri.parse(
                      'https://pub.dev/packages/hydrated_bloc/versions/9.1.3'),
                  version: '9.1.3',
                ),
                GridItem(
                  title: 'equatable',
                  icon: FluentIcons.branch_compare_24_regular,
                  url: Uri.parse(
                      'https://pub.dev/packages/equatable/versions/2.0.5'),
                  version: '2.0.5',
                ),
                GridItem(
                  title: 'lints',
                  icon: FluentIcons.ruler_24_regular,
                  url: Uri.parse(
                      'https://pub.dev/packages/flutter_lints/versions/3.0.1'),
                  version: '3.0.1',
                ),
                GridItem(
                  title: 'path_provider',
                  icon: FluentIcons.puzzle_piece_24_regular,
                  url: Uri.parse(
                      'https://pub.dev/packages/path_provider/versions/2.1.2'),
                  version: '2.1.2',
                ),
                GridItem(
                  title: 'flutter_displaymode',
                  icon: FluentIcons.top_speed_24_filled,
                  url: Uri.parse(
                      'https://pub.dev/packages/flutter_displaymode/versions/0.6.0'),
                  version: '0.6.0',
                ),
                GridItem(
                  title: 'easy_localization',
                  icon: FluentIcons.local_language_24_regular,
                  url: Uri.parse(
                      'https://pub.dev/packages/easy_localization/versions/3.0.3'),
                  version: '3.0.3',
                ),
                GridItem(
                  title: 'hive',
                  icon: FluentIcons.leaf_three_24_regular,
                  url:
                      Uri.parse('https://pub.dev/packages/hive/versions/2.2.3'),
                  version: '2.2.3',
                ),
                GridItem(
                  title: 'url_launcher',
                  icon: FluentIcons.share_24_regular,
                  url: Uri.parse(
                      'https://pub.dev/packages/url_launcher/versions/6.2.4'),
                  version: '6.2.4',
                ),
                GridItem(
                  title: 'fluentui_system_icons',
                  icon: FluentIcons.icons_24_regular,
                  url: Uri.parse(
                      'https://pub.dev/packages/fluentui_system_icons/versions/1.1.225'),
                  version: '1.1.225',
                ),
              ],
            ),
            const SizedBox(height: 36),
          ]),
    );
  }
}
