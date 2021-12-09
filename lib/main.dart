import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atrina Practice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();
  double mainResult = 0.0;

  double addNum() {
    double result = double.parse(text1.text) + double.parse(text2.text);
    setState(() {
      mainResult = result;
    });
    return mainResult;
  }

  double subNum() {
    double result = double.parse(text1.text) - double.parse(text2.text);
    setState(() {
      mainResult = result;
    });
    return mainResult;
  }

  double mulNum() {
    double result = double.parse(text1.text) * double.parse(text2.text);
    setState(() {
      mainResult = result;
    });
    return mainResult;
  }

  double divNum() {
    double result = double.parse(text1.text) / double.parse(text2.text);
    setState(() {
      mainResult = result;
    });
    return mainResult;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Atrina Practice"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(13),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: text1,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(label: Text("First Number")),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: text2,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(label: Text("Second Number")),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () => addNum(), // Addition
                      child: const Text(
                        "\u002b",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => subNum(), // Subtraction
                      child: const Text(
                        "\u2013",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => mulNum(), // Multiplication
                      child: const Text(
                        "\u00d7",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => divNum(), // Division
                      child: const Text(
                        "\u00f7",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Calculation is $mainResult",
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
