import 'package:easy_localization/easy_localization.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../widgets/first_screen/info_card.dart';
import '../widgets/first_screen/theme_card.dart';
import '../widgets/header.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  static const List<bool> infoCardPattern = <bool>[true, false, false, true];
  static const List<Map<String, dynamic>> infoCards = <Map<String, dynamic>>[
    <String, dynamic>{
      'title': 'localization_title',
      'content': 'localization_content',
      'icon': FluentIcons.local_language_24_regular,
    },
    <String, dynamic>{
      'title': 'linting_title',
      'content': 'linting_content',
      'icon': FluentIcons.code_24_regular,
    },
    <String, dynamic>{
      'title': 'storage_title',
      'content': 'storage_content',
      'icon': FluentIcons.folder_open_24_regular,
    },
    <String, dynamic>{
      'title': 'dark_mode_title',
      'content': 'dark_mode_content',
      'icon': FluentIcons.weather_moon_24_regular,
    },
    <String, dynamic>{
      'title': 'state_title',
      'content': 'state_content',
      'icon': FluentIcons.leaf_three_24_regular,
    },
    <String, dynamic>{
      'title': 'display_title',
      'content': 'display_content',
      'icon': FluentIcons.top_speed_24_regular,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.surface,
      child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          physics: const BouncingScrollPhysics(),
          children: <Widget>[
            const Header(text: 'app_name'),

            Card(
              elevation: 0,
              shadowColor: Theme.of(context).colorScheme.shadow,

              /// Example: Many items have their own colors inside of the ThemData
              /// You can overwrite them in [config/style.dart].
              color: Theme.of(context).colorScheme.surfaceContainer,
              shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                side: BorderSide(color: Theme.of(context).shadowColor),
              ),
              child: SwitchListTile(
                onChanged: (bool newValue) {
                  /// Example: Change locale
                  /// The initial locale is automatically determined by the library.
                  /// Changing the locale like this will persist the selected locale.
                  context.setLocale(
                      newValue ? const Locale('de') : const Locale('en'));
                },
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                value: context.locale == const Locale('de'),
                inactiveTrackColor:
                    Theme.of(context).colorScheme.surfaceContainer,

                /// You can use a FittedBox to keep Text in its bounds.
                title: FittedBox(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.scaleDown,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        FluentIcons.local_language_24_regular,
                        color: Theme.of(context).colorScheme.primary,
                        opticalSize: 24,
                      ),
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
            ),

            /// Example: Good way to add space between items without using Paddings
            const SizedBox(height: 8),

            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <ThemeCard>[
                  ThemeCard(
                    mode: ThemeMode.system,
                    icon: FluentIcons.dark_theme_24_regular,
                  ),
                  ThemeCard(
                    mode: ThemeMode.light,
                    icon: FluentIcons.weather_sunny_24_regular,
                  ),
                  ThemeCard(
                    mode: ThemeMode.dark,
                    icon: FluentIcons.weather_moon_24_regular,
                  ),
                ]),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: Divider(
                color: Theme.of(context).dividerColor,
              ),
            ),

            /// If no complex grids are required remove the flutter_staggered_grid_view package
            MasonryGridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: infoCards.length,
              padding: const EdgeInsets.all(0),

              /// Example: Adjust based on screen size
              gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width > 768 ? 3 : 2,
              ),
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              itemBuilder: (BuildContext context, int index) =>

                  /// Example: it is good practice to put widgets in separate files.
                  /// This way the screen files won't become too large and
                  /// the code becomes more clear.
                  InfoCard(
                      title: infoCards[index]['title'] as String,
                      content: infoCards[index]['content'] as String,
                      icon: infoCards[index]['icon'] as IconData,
                      isPrimaryColor: MediaQuery.of(context).size.width > 768
                          ? index.isEven
                          : infoCardShouldBePrimary(index)),
            ),

            const SizedBox(height: 36),
          ]),
    );
  }

  /// This will determine which info cards should render in primary color based on the given pattern.
  bool infoCardShouldBePrimary(int index) {
    return infoCardPattern[index % infoCardPattern.length];
  }
}
