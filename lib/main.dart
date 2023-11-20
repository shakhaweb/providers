import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/providers/change_theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ChangeThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class  MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ChangeThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeProvider.currentTheme,
          home: Scaffold(
            appBar: AppBar(
              title: const Text("App"),
            ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              ThemeData newTheme = themeProvider.currentTheme == ThemeData.light()
                  ? ThemeData.dark()
                  : ThemeData.light();
              themeProvider.updateTheme(newTheme);
            },
            child: const Icon(Icons.lightbulb),
          ),
        ));
      },
    );
  }
}