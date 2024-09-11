import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text('Quiz Rápido', style: TextStyle(fontSize: 20)),
              const SizedBox(height: 30),
              const Text('Quem é o presidente do Brasil?'),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Fecha o BottomSheet
                },
                child: const Text('Pablo marçal'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Fecha o BottomSheet
                },
                child: const Text('Lulinha'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Fecha o BottomSheet
                },
                child: const Text('Donald Trump'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showBottomSheet(context),
          child: const Text('Mostrar pop-up'),
        ),
      ),
    );
  }
}
