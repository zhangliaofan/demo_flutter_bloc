import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'demo_theme_event.dart';
part 'demo_theme_state.dart';

class DemoThemeBloc extends Bloc<DemoThemeEvent, DemoThemeState> {
  DemoThemeBloc() : super(DemoThemeInitial());

  @override
  Stream<DemoThemeState> mapEventToState(
    DemoThemeEvent event,
  ) async* {
    if (event is DemoChangedEvent) {
      // DemoChangedEvent
      // print("event.isLight:${event.isLight}");
      
      yield DemoThemeChaned(isLight: event.isLight);
    }
  }
}
