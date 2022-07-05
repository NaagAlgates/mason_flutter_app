import 'package:test_app/core/enum/app_flavours.dart';
import 'package:test_app/counter/counter.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      debugShowCheckedModeBanner: _displayDebugBanner(context),
      home: const CounterPage(),
    );
  }
}

bool _displayDebugBanner(BuildContext context) =>
    FlavoursConfiguration.of(context)?.appflavour == Appflavours.development;

class FlavoursConfiguration extends InheritedWidget {
  const FlavoursConfiguration({
    super.key,
    required super.child,
    required this.appflavour,
  });

  final Appflavours appflavour;

  static FlavoursConfiguration? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<FlavoursConfiguration>();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
