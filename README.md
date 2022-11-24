# dart-bloc-concurrency
Dart bloc concurrency.

## Getting started

Add this to your `pubspec.yaml` under `dependencies`

```yaml
dart_bloc_concurrency:
  git: https://github.com/mj12358/dart-bloc-concurrency
```

## Usage

```dart
import 'package:dart-bloc-concurrency/dart-bloc-concurrency.dart';

class MyBloc extends Bloc<MyBlocEvent, MyBlocState> {
  MyBloc() : 
    on<MyBlocEvent>(_onEvent, transformer: debounce(),
  );

  void _onEvent(
    MyBlocEvent event,
    Emitter<MyBlocState> emit,
  ) {
    emit();
  }
}
```