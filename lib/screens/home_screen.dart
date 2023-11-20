import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/screens/shopping_card_screen.dart';
import '../providers/shopping_card_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // const Text(
            //   'You have pushed the button this many times:',
            // ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(20),
                  child: GestureDetector(
                    onTap: () {
                      Provider.of<ShoppingCardProvider>(context, listen: false)
                          .addItemToBag(index.toString());
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.blue,
                      child: Center(
                        child: Text(index.toString()),
                      ),
                    ),
                  ),
                ),
                itemCount: 10,
              ),
            ),

            // Text('${context.watch<CounterProvider>().counter}')
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // FloatingActionButton(
          //   onPressed: () => context.read<CounterProvider>().increment(),
          //   tooltip: 'Increment',
          //   child: const Icon(Icons.add),
          // ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ShoppingCardScreen()));
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
