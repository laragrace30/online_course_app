import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../states/app_state.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();

     return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 6, 107),
      body: Column(
        children: [
          const Text('Online Master Class',
            style: TextStyle(color: Colors.white, fontSize: 40), 
          ),
          Text(appState.current.asUpperCase, 
            style: const TextStyle(color: Colors.white, fontSize: 35), 
          ),
        ],
      ),
    );
  }
}
