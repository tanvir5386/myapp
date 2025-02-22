import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CachedNetworkImage(
                imageUrl: 'https://incubator.ucf.edu/wp-content/uploads/2023/07/artificial.jpg',
                placeholder: (context, url) => const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ), // Cached Network Image
              const SizedBox(height: 20),
              Image.network('http://picsum.photos/250?image=10'), // Regular Network Image
            ],
          ),
        ),
      ),
    );
  }
}
