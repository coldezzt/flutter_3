import 'package:dotnet_cw/bloc/img_bloc.dart';
import 'package:dotnet_cw/repositories/img_repository.dart';
import 'package:dotnet_cw/use_cases/fetch_imgs.dart';
import 'package:dotnet_cw/use_cases/fetch_img.dart';
import 'package:dotnet_cw/views/home_screen.dart';
import 'package:dotnet_cw/views/pagination_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  final repository = ImgRepositoryImpl();
  final fetchImgUseCase = FetchImgUseCase(repository);
  final fetchImgsUseCase = FetchImgsUseCase(repository);
  final imgBloc = ImgBloc(
    fetchImgUseCase: fetchImgUseCase,
    fetchImgsUseCase: fetchImgsUseCase
  );

  runApp(
    BlocProvider(
      create: (_) => imgBloc..add(const ImgEvent.initialize()),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Img App',
      theme: ThemeData(primarySwatch: Colors.orange),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/pages': (context) => const PaginationScreen(),
      },
    );
  }
}