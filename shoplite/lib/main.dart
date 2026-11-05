
import 'package:flutter/material.dart';

void main() {
  runApp(const ShopLiteApp());
  
}

class ShopLiteApp extends StatelessWidget {
  const ShopLiteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShopLite',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(title: 'ShopLite — Сагс'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _count = 0;

  void _incrementCounter() {
    if (_count < 10) {
      setState(() {
        _count++;
      });
    }
  }

  void _decrementCounter() {
    if (_count > 0) {
      setState(() {
        _count--;
      });
    }
  }

  void _resetCounter() {
    setState(() {
      _count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
            Center(
              child: Badge(
                label: Text('$_count'),
                child: const Icon(Icons.shopping_cart_outlined),
    ),
  ),
  const SizedBox(width: 16),
  IconButton(
    onPressed: _resetCounter,
    icon: const Icon(Icons.refresh),
    tooltip: 'Reset',
  ),
],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Сагсанд байгаа бараа:'),
            Text(
              '$_count',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            if (_count == 10)
              Text(
                'Нэг удаад 10-аас олон бараа захиалах боломжгүй шдээ хө',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.error,
                ),
                textAlign: TextAlign.center,
              ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'increment',
            onPressed: _count < 10 ? _incrementCounter : null,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 12),
          FloatingActionButton(
            heroTag: 'decrement',
            onPressed: _count > 0 ? _decrementCounter : null,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
