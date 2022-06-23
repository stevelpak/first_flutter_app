import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  late int _count;

  @override
  void initState() {
    super.initState();
    _count = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 214, 160),
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Counter (made by Steve)",
            style: TextStyle(fontFamily: 'Ubuntu'),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Tap '-' to decrement",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 150,
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.indigo,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    minWidth: 50,
                    onPressed: (() => setState(() {
                          _count--;
                        })),
                    child: const Icon(Icons.remove),
                  ),
                  Text(
                    "$_count",
                    style: const TextStyle(fontSize: 18),
                  ),
                  MaterialButton(
                    minWidth: 50,
                    onPressed: (() => setState(() {
                          _count++;
                        })),
                    child: const Icon(Icons.add),
                  )
                ],
              ),
            ),
            const Text(
              "Tap '+' to increment",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
