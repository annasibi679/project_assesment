import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  Color containerColor = const Color.fromARGB(255, 0, 0, 0); // Default color
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Color Changing Buttons",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    containerColor = const Color.fromARGB(255, 255, 17, 0);
                  });
                },
                child: const Text("RED"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    containerColor = const Color.fromARGB(255, 0, 255, 8);
                  });
                },
                child: const Text("GREEN"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    containerColor = const Color.fromARGB(255, 0, 139, 252);
                  });
                },
                child: const Text("BLUE"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    containerColor = const Color.fromARGB(255, 255, 244, 31);
                  });
                },
                child: const Text("YELLOW"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    containerColor = const Color.fromARGB(255, 245, 131, 18);
                  });
                },
                child: const Text("ORANGE"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 200,
                width: 200,
                color: containerColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
