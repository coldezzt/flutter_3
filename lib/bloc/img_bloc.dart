import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dotnet_cw/bloc/img_event.dart';
import 'package:dotnet_cw/bloc/img_state.dart';
import 'package:dotnet_cw/use_cases/fetch_imgs.dart';
import 'package:dotnet_cw/use_cases/fetch_img.dart';

class ImgBloc extends Bloc<ImgEvent, ImgState> {
  final FetchImgUseCase fetchImgUseCase;
  final FetchImgsUseCase fetchImgsUseCase;

  ImgBloc({
    required this.fetchImgUseCase,
    required this.fetchImgsUseCase,
  }) : super(const ImgState.normal()) {
    on<Initialize>(_onInitialize);
    on<FetchImg>(_onFetchImg);
    on<FetchImgs>(_onFetchImgs);
  }

  void _onInitialize(Initialize event, Emitter<ImgState> emit) {
    emit(const ImgState.normal());
  }

  Future<void> _onFetchImg(FetchImg event, Emitter<ImgState> emit) async {
    emit(const ImgState.loading());
    try {
      final img = await fetchImgUseCase.execute();

      List<String> data2 = [];
      data2 = state.data2 ?? [];

      emit(ImgState.normal(
        data1: img,
        data2: data2,
      ));
    } catch (e) {
      emit(ImgState.error('Failed to load img: $e'));
    }
  }

  Future<void> _onFetchImgs(FetchImgs event, Emitter<ImgState> emit) async {
    emit(const ImgState.loading());
    try {
      final newImgs = await fetchImgsUseCase.execute(event.page, event.limit);

      List<String> currentImgs = [];
      currentImgs = state.data2 ?? [];

      String? data1;
      data1 = state.data1;

      emit(ImgState.normal(
        data1: data1,
        data2: [...currentImgs, ...newImgs],
      ));
    } catch (e) {
      emit(ImgState.error('Failed to load imgs: $e'));
    }
  }
}