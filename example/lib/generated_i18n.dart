import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
export 'package:flutter_localizations/flutter_localizations.dart';

const supportedLocales = <Locale>[
    Locale.fromSubtags(languageCode: 'en', scriptCode: null, countryCode: 'US'),
    Locale.fromSubtags(languageCode: 'es', scriptCode: null, countryCode: null),
    Locale.fromSubtags(languageCode: 'ru', scriptCode: null, countryCode: null),
  ];

abstract class FlocaStrings {
  String get demo;
  String get hello;
  String get language;
  String get licenses;
  String get privacyTerms;
  String get pushedButtonTimes;
  String get rateApp;
  String get termsOfUse;
  String get withHash;
}

class FlocaStringsEnUs implements FlocaStrings {
  @override String get demo => 'Demo';
  @override String get hello => 'Hello!';
  @override String get language => 'Language';
  @override String get licenses => 'Copyrights';
  @override String get privacyTerms => 'Privacy terms';
  @override String get pushedButtonTimes => 'You have pushed the button this many times:';
  @override String get rateApp => 'Rate the app';
  @override String get termsOfUse => 'Terms of Use';
  @override String get withHash => '# is a hash sign';
}

class FlocaStringsEs implements FlocaStrings {
  @override String get demo => 'Demo';
  @override String get hello => 'Hola!';
  @override String get language => 'Lingvo';
  @override String get licenses => 'Kopirajta avizo';
  @override String get privacyTerms => 'Privateca Politiko';
  @override String get pushedButtonTimes => 'Vi premis la butonon tiel multajn fojojn:';
  @override String get rateApp => 'Rate the app';
  @override String get termsOfUse => 'Terms of Use';
  @override String get withHash => '# estas la krado simbolo';
}

class FlocaStringsRu implements FlocaStrings {
  @override String get demo => 'Демо';
  @override String get hello => 'Привет!';
  @override String get language => 'Язык';
  @override String get licenses => 'Авторские права';
  @override String get privacyTerms => 'Конфиденциальность';
  @override String get pushedButtonTimes => 'Вы нажимали эту кнопку столько раз:';
  @override String get rateApp => 'Оценить приложение';
  @override String get termsOfUse => 'Terms of Use';
  @override String get withHash => '# это символ решетки';
}

class FlocaDelegate extends LocalizationsDelegate<FlocaStrings> {
  const FlocaDelegate();

  @override
  Future<FlocaStrings> load(Locale locale) async {
    switch (locale.toLanguageTag()) {
      case 'es': return FlocaStringsEs();
      case 'ru': return FlocaStringsRu();
      default: return FlocaStringsEnUs();
    }
  }

  @override
  bool isSupported(Locale locale) => supportedLocales.contains(locale);

  @override
  bool shouldReload(FlocaDelegate old) => false;
}

extension FlocaBuildContextExt on BuildContext
{
  FlocaStrings get i18n {
    return Localizations.of<FlocaStrings>(this, FlocaStrings)!;
  }
}

const localizationsDelegates = <LocalizationsDelegate<dynamic>> [
  const FlocaDelegate(),
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate
];  
  