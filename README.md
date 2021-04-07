Floca is a code-generation library for internationalizing Flutter apps.

Say, you have an Excel spreadsheet like this:

| property | en     | es      | ru      | hi  |
|----------|--------|---------|---------|-----|
| greeting | hi!    | hola!   | привет! | हाय! |
| farewell | bye    | adiós   | пока    |अलविदा|

`floca` will let you access its content like this:

```dart
Widget build(BuildContext context) {
  // getting the strings in proper language
  var a = context.i18n.greeting;
  var b = context.i18n.farewell;
  ...
}  
```


# What is does

Floca takes your `.csv` spreadsheet and generates a `.dart` file.
```dart
import "newly_generated.dart";
// adds the .i18n extension on BuildContext objects
```


# How to Install

Add floca to pubspec.yaml: 

``` yaml
dependencies:
  flutter_localizations:  # a flutter component  
    sdk: flutter          # unrelated to floca

dev_dependencies:
  floca: any
```

Update dependencies:

``` bash
flutter pub get
```




# How to Use

#### 1. Create the spreadsheet

| property | en     | es      | ru      | hi  |
|----------|--------|---------|---------|-----|
| greeting | hi!    | hola!   | привет! | हाय! |
| farewell | bye    | adiós   | пока    |अलविदा|

Save it as `.csv` file, say, `string_constants.csv`.

#### 2. Generate a .dart file from it

```bash
$ flutter pub run floca:floca string_constants.csv string_constants.dart
```

#### 3. Provide arguments to MaterialApp

```dart
import 'string_constants.dart'; // file we created with flocagen

MaterialApp(
  ...
  supportedLocales: supportedLocales, // add this
  localizationsDelegates: localizationsDelegates, // and this
  ...
);
```

#### 5. Get localized text in your app

```dart
import 'string_constants.dart'; // file we created with flocagen

Widget build(BuildContext context) {
  // now [context] has a new property [.i18n]  
  String s = context.i18n.greeting;
  return Text(s); 
}
```
