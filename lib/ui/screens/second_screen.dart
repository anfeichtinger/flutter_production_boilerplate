import 'package:flutter/material.dart';
import 'package:flutter_production_boilerplate/ui/widgets/header.dart';
import 'package:flutter_production_boilerplate/ui/widgets/second_screen/grid_item.dart';
import 'package:flutter_production_boilerplate/ui/widgets/second_screen/link_card.dart';
import 'package:flutter_production_boilerplate/ui/widgets/second_screen/text_divider.dart';
import 'package:ionicons/ionicons.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).backgroundColor,
      child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          physics: const BouncingScrollPhysics(),
          children: [
            const Header(text: 'bottom_nav_second'),
            const LinkCard(
                title: 'github_card_title',
                icon: Ionicons.logo_github,
                url:
                    'https://github.com/anfeichtinger/flutter_production_boilerplate'),
            const TextDivider(text: 'author_divider_title'),
            const LinkCard(
                title: 'website_card_title',
                icon: Ionicons.person_circle_outline,
                url: 'https://feichtinger.dev'),
            const SizedBox(height: 8),
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              childAspectRatio: 2 / 1,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              shrinkWrap: true,
              children: const [
                GridItem(
                  title: 'instagram_card_title',
                  icon: Ionicons.logo_instagram,
                  url: 'https://www.instagram.com/anfeichtinger',
                ),
                GridItem(
                  title: 'twitter_card_title',
                  icon: Ionicons.logo_twitter,
                  url: 'https://twitter.com/_pharrax',
                ),
                GridItem(
                  title: 'donate_card_title',
                  icon: Ionicons.heart_outline,
                  url:
                      'https://www.paypal.com/donate?hosted_button_id=EE3W7PS6AHEP8&source=url',
                ),
              ],
            ),
            const TextDivider(text: 'packages_divider_title'),
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              childAspectRatio: 2 / 1,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              shrinkWrap: true,
              children: const [
                GridItem(
                  title: 'flutter_bloc',
                  icon: Ionicons.apps_outline,
                  url: 'https://pub.dev/packages/flutter_bloc',
                ),
                GridItem(
                  title: 'bloc',
                  icon: Ionicons.grid_outline,
                  url: 'https://pub.dev/packages/bloc',
                ),
                GridItem(
                  title: 'hydrated_bloc',
                  icon: Ionicons.folder_open_outline,
                  url: 'https://pub.dev/packages/hydrated_bloc',
                ),
                GridItem(
                  title: 'equatable',
                  icon: Ionicons.git_compare_outline,
                  url: 'https://pub.dev/packages/equatable',
                ),
                GridItem(
                  title: 'lints',
                  icon: Ionicons.options_outline,
                  url: 'https://pub.dev/packages/flutter_lints',
                ),
                GridItem(
                  title: 'path_provider',
                  icon: Ionicons.extension_puzzle_outline,
                  url: 'https://pub.dev/packages/path_provider',
                ),
                GridItem(
                  title: 'flutter_displaymode',
                  icon: Ionicons.speedometer_outline,
                  url: 'https://pub.dev/packages/flutter_displaymode',
                ),
                GridItem(
                  title: 'easy_localization',
                  icon: Ionicons.text_outline,
                  url: 'https://pub.dev/packages/easy_localization',
                ),
                GridItem(
                  title: 'hive',
                  icon: Ionicons.folder_outline,
                  url: 'https://pub.dev/packages/hive',
                ),
                GridItem(
                  title: 'url_launcher',
                  icon: Ionicons.share_outline,
                  url: 'https://pub.dev/packages/url_launcher',
                ),
                GridItem(
                  title: 'ionicons',
                  icon: Ionicons.logo_ionic,
                  url: 'https://pub.dev/packages/ionicons',
                ),
              ],
            ),
            const SizedBox(height: 36),
          ]),
    );
  }
}
