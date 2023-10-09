# Character Viewer

This Flutter project fetches and displays character data from the DuckDuckGo Web API, utilizing a component architecture based on MVVM and BLoC.

### Variant Information:

#### Variant One:
- **Name:** Simpsons Character Viewer
- **Data API:** [http://api.duckduckgo.com/?q=simpsons+characters&format=json](http://api.duckduckgo.com/?q=simpsons+characters&format=json)
- **Package/Bundle name:** com.sample.simpsonsviewer

#### Variant Two:
- **Name:** The Wire Character Viewer
- **Data API:** [http://api.duckduckgo.com/?q=the+wire+characters&format=json](http://api.duckduckgo.com/?q=the+wire+characters&format=json)
- **Package/Bundle name:** com.sample.wireviewer

## Compile-time Variants

This project is equipped with two variants. The desired variant can be set during compile time using dart defines.

To build:
- **Simpsons Character Viewer:** `flutter run -v --dart-define="APP_CONFIG_VARIANT=1"`
- **The Wire Character Viewer:** `flutter run -v --dart-define="APP_CONFIG_VARIANT=2"`

You can also set these values as additional run arguments in your IDE run configuration.

## Testing
To run the unit test: `flutter test test/unit/search_results_repository_test.dart
`

### Using Libraries:
- RxDart
- inject.dart
- mockito
- built_value
