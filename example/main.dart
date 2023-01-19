import 'package:bloc/bloc.dart';
import 'package:dart_bloc_concurrency/dart_bloc_concurrency.dart';

class MyBloc extends Bloc<MyBlocEvent, MyBlocState> {
  MyBloc() : super(MyBlocState()) {
    on<MyBlocEvent>(_onEvent, transformer: debounce());
  }

  void _onEvent(
    MyBlocEvent event,
    Emitter<MyBlocState> emit,
  ) {
    emit(MyBlocState());
  }
}

class MyBlocState {}

abstract class MyBlocEvent {}
