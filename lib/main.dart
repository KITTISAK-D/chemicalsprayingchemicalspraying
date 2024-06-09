import 'package:flutter/material.dart';
import 'package:chemicalspraying/l10n/locali18n.dart';
import 'package:chemicalspraying/router/routes.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});
  // ignore: library_private_types_in_public_api
  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;

  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>()!;
    state.setLocale(newLocale);
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();

  Locale _locale = const Locale('en', '');

  setLocale(Locale locale) async {
    await setLocaleStore(locale.toString());
    if (_locale == locale) return;
    setState(() {
      _locale = locale;
    });
  }

  @override
  void initState() {
    super.initState();

    getLocale(context).then((locale) {
      if (_locale == locale) return;
      setState(() {
        _locale = locale;
      });
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "chemicalspraying",
      debugShowCheckedModeBanner: false,
      locale: _locale,
      // hook up router to MaterialApp
      routerConfig: _appRouter.config(),
      
    );
  }
}
