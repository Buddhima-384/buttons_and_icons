import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Buttons & Icons Lab"),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TODO 1: Add a TextButton

            TextButton(
              onPressed: () {
                print("I am a test button");
              },
              child: const Text("click me"),
            ),
            
            // TODO 2: Add an ElevatedButton
            ElevatedButton(
              onPressed: () {
                print("I am an elevated button");
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),

              child: const Text("click me"),
            ),

            // TODO 3: Add an OutlinedButton
            OutlinedButton(
              onPressed: () {
                print("I am an outlined button");
              },
              child: const Text("click me"),
            ),
            const SizedBox(height: 16),

            // TODO 4: Add an IconButton
            IconButton(
              onPressed: () {
                print("I am an icon button");
              },
              icon: const Icon(Icons.alarm),
            ),
            const SizedBox(
              height: 16,
            ), // Replace this line with your IconButton
            // TODO 5: Add an ElevatedButton.icon
            ElevatedButton.icon(
              onPressed: () {
                print("I am an elevated button with icon");
              },
              icon: const Icon (Icons.alarm),
              label: const Text("click me"),
            ),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Floating Action Button Clicked!");
        },
        backgroundColor: Colors.blue[800],
        child: const Center(child: Text("Click")),
      ),
    );
  }
}
