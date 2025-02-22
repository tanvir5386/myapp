import 'package:flutter/material.dart';

void main() {
  runApp(const Lab06AdvancedUI());
}

class Lab06AdvancedUI extends StatelessWidget {
  const Lab06AdvancedUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab06 Advanced UI',
      home: Scaffold(
        appBar: AppBar(title: const Text('Lab06 Advanced UI')),
        body: Center(
          child: Column(
            children: [
              Image.network(
                'https://incubator.ucf.edu/wp-content/uploads/2023/07/artificial.jpg',
              ),
              Expanded(
                child: Image(
                  image: NetworkImage('https://picsum.photos/250?image=5'),
                ),
              ),
              // New Image
              Image.network('http://picsum.photos/250?image=10'),
            ],
          ),
        ),
      ),
    );
  }
}
