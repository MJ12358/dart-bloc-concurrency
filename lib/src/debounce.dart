import 'package:bloc/bloc.dart';
import 'package:stream_transform/stream_transform.dart';

/// Debounce events.
///
EventTransformer<Event> debounce<Event>(Duration duration) {
  return (events, mapper) => events.debounce(duration).switchMap(mapper);
}
