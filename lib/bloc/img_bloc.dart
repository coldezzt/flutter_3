import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dotnet_cw/use_cases/fetch_imgs.dart';
import 'package:dotnet_cw/use_cases/fetch_img.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/img.dart';

part 'img_state.dart';
part 'img_event.dart';
part 'img_bloc.freezed.dart';

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

      List<String> data2 =  (state as _Normal).data2;

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

      List<String> currentImgs = (state as _Normal).data2;
      Img? data1 = (state as _Normal).data1;

      emit(ImgState.normal(
        data1: data1,
        data2: [...currentImgs, ...newImgs],
      ));
    } catch (e) {
      emit(ImgState.error('Failed to load imgs: $e'));
    }
  }
}