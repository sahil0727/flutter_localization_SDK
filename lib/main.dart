import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/Providers/lang_control_provider.dart';
import 'package:provider/provider.dart';
import 'homescreen.dart';
import 'l10n/app_localizations.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => LangController(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: AppLocalizations
          .supportedLocales[context.watch<LangController>().index],
      // here index is select lang.
      debugShowCheckedModeBanner: false,
      title: 'Xenon',
      home: const MyHomeScreen(),
    );
  }
}
