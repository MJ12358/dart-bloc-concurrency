# dart-bloc-concurrency

This is a copy of [bloc_concurrency](https://pub.dev/packages/bloc_concurrency) with an added `debounce` function.

## Getting started

Add this to your `pubspec.yaml` under `dependencies`

```yaml
dart_bloc_concurrency: ^2.0.0
```

## Usage

```dart
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
```
