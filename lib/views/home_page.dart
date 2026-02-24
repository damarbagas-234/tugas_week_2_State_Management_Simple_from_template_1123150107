import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/counter_model.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterModel>(
      builder: (context, counterModel, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(title),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('You have pushed the button this many times:'),
                Text(
                  counterModel.angka.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: FloatingActionButton(
                    backgroundColor: Theme.of(
                      context,
                    ).colorScheme.inversePrimary,
                    onPressed: () {
                      counterModel.decrement();
                    },
                    tooltip: 'Decrement',
                    child: const Icon(Icons.remove),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: FloatingActionButton(
                    backgroundColor: Theme.of(
                      context,
                    ).colorScheme.inversePrimary,
                    onPressed: () {
                      counterModel.increment();
                    },
                    tooltip: 'Increment',
                    child: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
