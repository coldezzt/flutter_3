import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_models/img_view_model.dart';

class PaginationScreen extends StatefulWidget {
  const PaginationScreen({super.key});

  @override
  _PaginationScreenState createState() => _PaginationScreenState();
}

class _PaginationScreenState extends State<PaginationScreen> {
  final ScrollController _scrollController = ScrollController();
  int _currentPage = 1;
  final int _limit = 3;

  @override
  void initState() {
    super.initState();
    _initData();
    _setupScrollListener();
  }

  void _initData() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final vm = context.read<ImgViewModel>();
      vm.imgs.clear();
      vm.fetchImgs(_currentPage, _limit);
    });
  }

  void _setupScrollListener() {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _loadMore();
      }
    });
  }

  void _loadMore() {
    _currentPage++;
    context.read<ImgViewModel>().fetchImgs(_currentPage, _limit);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lazy Loading imgs')),
      body: Consumer<ImgViewModel>(
        builder: (context, vm, child) {
          if (vm.isLoading && vm.imgs.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          if (vm.error != null) {
            return Center(child: Text('Error: ${vm.error}'));
          }

          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  controller: _scrollController,
                  itemCount: vm.imgs.length + 1,
                  itemBuilder: (context, index) {
                    if (index < vm.imgs.length) {
                      final img = vm.imgs[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.memory(
                          base64Decode(img),
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      );
                    } else {
                      return vm.isLoading
                          ? const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(child: CircularProgressIndicator()),
                      )
                          : const SizedBox.shrink();
                    }
                  },
                ),
              ),
              ElevatedButton(
                onPressed: _loadMore,
                child: const Text('Load more!'),
              ),
            ],
          );
        },
      ),
    );
  }
}