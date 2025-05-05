import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_models/img_view_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Single Image')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.read<ImgViewModel>().fetchImage(),
              child: const Text('Load Image'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/pages'),
              child: const Text('Go to Pagination'),
            ),
            const SizedBox(height: 20),
            Consumer<ImgViewModel>(
              builder: (context, vm, child) {
                if (vm.isLoading) {
                  return const CircularProgressIndicator();
                }
                if (vm.error != null) {
                  return Text('Error: ${vm.error}');
                }
                if (vm.imgImage != null) {
                  return Image.memory(base64Decode(vm.imgImage!.url), fit: BoxFit.cover);
                }
                return const Text('Press the button to load a random image');
              },
            ),
          ],
        ),
      ),
    );
  }
}