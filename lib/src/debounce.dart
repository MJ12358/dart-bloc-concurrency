import 'package:bloc/bloc.dart';
import 'package:stream_transform/stream_transform.dart';

/// Debounce events.
///
EventTransformer<Event> debounce<Event>(Duration? duration) {
  final Duration d = duration ?? Duration(milliseconds: 250);

  return (events, mapper) {
    return events.debounce(d).switchMap(mapper);
  };
}
