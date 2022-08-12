import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../widgets/first_screen/info_card.dart';
import '../widgets/first_screen/theme_card.dart';
import '../widgets/header.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.background,
      child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          physics: const BouncingScrollPhysics(),
          children: <Widget>[
            const Header(text: 'app_name'),

            Card(
              elevation: 2,
              shadowColor: Theme.of(context).colorScheme.shadow,

              /// Example: Many items have their own colors inside of the ThemData
              /// You can overwrite them in [config/theme.dart].
              color: Theme.of(context).colorScheme.surface,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: SwitchListTile(
                onChanged: (bool newValue) {
                  /// Example: Change locale
                  /// The initial locale is automatically determined by the library.
                  /// Changing the locale like this will persist the selected locale.
                  context.setLocale(
                      newValue ? const Locale('de') : const Locale('en'));
                },
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                value: context.locale == const Locale('de'),
                title: Row(
                  children: <Widget>[
                    Icon(Ionicons.language_outline,
                        color: Theme.of(context).colorScheme.primary),
                    const SizedBox(width: 16),
                    Text(
                      tr('language_switch_title'),
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .apply(fontWeightDelta: 2),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 8),

            GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 1.75 / 1,
                padding: EdgeInsets.zero,
                children: const <ThemeCard>[
                  ThemeCard(
                    mode: ThemeMode.system,
                    icon: Ionicons.contrast_outline,
                  ),
                  ThemeCard(
                    mode: ThemeMode.light,
                    icon: Ionicons.sunny_outline,
                  ),
                  ThemeCard(
                    mode: ThemeMode.dark,
                    icon: Ionicons.moon_outline,
                  ),
                ]),

            /// Example: Good way to add space between items without using Paddings
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Divider(
                color:
                    Theme.of(context).colorScheme.onBackground.withOpacity(.4),
              ),
            ),
            const SizedBox(height: 8),

            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 4 / 5.5,
              padding: EdgeInsets.zero,
              children: const <InfoCard>[
                /// Example: it is good practice to put widgets in separate files.
                /// This way the screen files won't become too large and
                /// the code becomes more clear.
                InfoCard(
                    title: 'localization_title',
                    content: 'localization_content',
                    icon: Ionicons.language_outline,
                    isPrimaryColor: true),
                InfoCard(
                    title: 'linting_title',
                    content: 'linting_content',
                    icon: Ionicons.code_slash_outline,
                    isPrimaryColor: false),
                InfoCard(
                    title: 'storage_title',
                    content: 'storage_content',
                    icon: Ionicons.folder_open_outline,
                    isPrimaryColor: false),
                InfoCard(
                    title: 'dark_mode_title',
                    content: 'dark_mode_content',
                    icon: Ionicons.moon_outline,
                    isPrimaryColor: true),
                InfoCard(
                    title: 'state_title',
                    content: 'state_content',
                    icon: Ionicons.leaf_outline,
                    isPrimaryColor: true),
                InfoCard(
                    title: 'display_title',
                    content: 'display_content',
                    icon: Ionicons.speedometer_outline,
                    isPrimaryColor: false),
              ],
            ),
            const SizedBox(height: 36),
          ]),
    );
  }
}
