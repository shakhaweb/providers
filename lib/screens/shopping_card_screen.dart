import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/providers/shopping_card_provider.dart';


class ShoppingCardScreen extends StatefulWidget {
  const ShoppingCardScreen({super.key});

  @override
  State<ShoppingCardScreen> createState() => _ShoppingCardScreenState();
}

class _ShoppingCardScreenState extends State<ShoppingCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(""),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Center(child: Text("$index"));
        },
        itemCount: context.watch<ShoppingCardProvider>().itemTitle.length,
      ),
    );
  }
}
