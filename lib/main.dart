import 'package:dotnet_cw/repositories/img_repository.dart';
import 'package:dotnet_cw/use_cases/fetch_img_gifs.dart';
import 'package:dotnet_cw/use_cases/fetch_img.dart';
import 'package:dotnet_cw/view_models/img_view_model.dart';
import 'package:dotnet_cw/views/home_screen.dart';
import 'package:dotnet_cw/views/pagination_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  final repository = ImgRepositoryImpl();
  final fetchCatImageUseCase = FetchImgUseCase(repository);
  final fetchCatGifsUseCase = FetchImgsUseCase(repository);
  final viewModel = ImgViewModel(fetchImgUseCase: fetchCatImageUseCase, fetchImgsUseCase: fetchCatGifsUseCase);

  runApp(
    ChangeNotifierProvider(
      create: (_) => viewModel,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cat App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/pages': (context) => const PaginationScreen(),
      },
    );
  }
}