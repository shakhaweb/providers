import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/providers/change_theme_provider.dart';
import 'package:providers/providers/shopping_card_provider.dart';

import 'providers/counter_providers.dart';
import 'screens/home_screen.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterProvider>(
          create: (_) => CounterProvider(),
        ),
        ChangeNotifierProvider<ShoppingCardProvider>(
          create: (_) => ShoppingCardProvider(),
        ),
        ChangeNotifierProvider<ChangeThemeProvider>(
            create: (_) => ChangeThemeProvider())
      ],
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home:  HomeScreen(title: '',)),
    );
  }
}
