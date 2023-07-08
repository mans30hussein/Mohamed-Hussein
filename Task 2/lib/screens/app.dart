import 'package:flutter/material.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List<String> myList=[1,1.2,"",true,null];

    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 400,
          child: Column(
            children: [
              const Text(
                "Hello world",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "My name is",
                style: TextStyle(color: Colors.blue, fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Mohamed"),
              const SizedBox(
                height: 100,
              ),

              // ElevatedButton(onPressed: () {}, child: Text("Go to Log in"))

              ElevatedButton(
                  onPressed: () {
                    print("hello iam omar");
                  },
                  child: const Text("Omar"))
            ],
          ),
        ),
      ),
    );
  }
}