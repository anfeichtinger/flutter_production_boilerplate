# Flutter Production Boilerplate
## A flutter project containing bloc, pedantic, hive, easy_translations and more!

This repository is the starting point for my personal projects. If you have any suggestions or improvements feel free to let me know. The project strives to implement best practices recommended by Google and other developers. These best practices include but are not limited to: 

- Using BLOC & Cubit for state management.
- Using Pedantic for stricter linting rules.
- Using Hive for platform independent storage that also works for web.
- Project structure, const constructors, extracted widgets and many more...

## Installation

This repository requires [Flutter](https://flutter.dev/docs/get-started/install) to be installed and present in your development environment.

Clone the project, install the dependencies and run the application.

```sh
git clone https://github.com/anfeichtinger/flutter_production_boilerplate.git
cd flutter_production_boilerplate
flutter pub get
flutter run lib/main.dart
```

## Pub packages

This repository makes use of the following pub packages:

| Package | Version | Usage |
| ------ | ------ | ------ |
| [Bloc](https://pub.dev/packages/bloc) | ^7.0.0 | State management
| [Flutter Bloc](https://pub.dev/packages/flutter_bloc) | ^7.0.1 | State management
| [Hydrated Bloc](https://pub.dev/packages/hydrated_bloc) | ^7.0.1 | Persists Bloc state with Hive
| [Equatable](https://pub.dev/packages/equatable) | ^2.0.2 | Easily compare custom classes, used for Bloc states
| [Pedantic](https://pub.dev/packages/pedantic) | ^1.11.0 | Stricter linting rules
| [Path Provider](https://pub.dev/packages/path_provider) | ^2.0.2 | Get the save path for Hive
| [Flutter Displaymode](https://pub.dev/packages/flutter_displaymode) | ^0.3.2 | Support high refresh rate displays
| [Easy Localization](https://pub.dev/packages/easy_localization) | ^3.0.0 | Makes localization easy
| [Hive](https://pub.dev/packages/hive) | ^2.0.4 | Platform independent storage.
| [Url Launcher](https://pub.dev/packages/url_launcher) | ^6.0.6 | Open urls in Browser (optional)
| [Ionicons](https://pub.dev/packages/ionicons) | ^0.1.2 | Modern icon library (optional)

## License

MIT