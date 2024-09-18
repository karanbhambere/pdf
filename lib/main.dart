import 'package:flutter/material.dart';
import 'package:text_app/app.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollbarTheme = ScrollbarThemeData(
      thumbVisibility: WidgetStateProperty.all(true),
    );
    return MaterialApp(
      theme: ThemeData.light().copyWith(scrollbarTheme: ScrollbarTheme),
      darkTheme: ThemeData.dark().copyWith(scrollbarTheme: ScrollbarTheme),
      title: 'Flutter PDF Demo',
      home: const MyApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
