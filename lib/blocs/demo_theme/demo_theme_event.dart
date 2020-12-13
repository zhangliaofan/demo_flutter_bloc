part of 'demo_theme_bloc.dart';

abstract class DemoThemeEvent extends Equatable {
  const DemoThemeEvent();

  @override
  List<Object> get props => [];
}

class DemoChangedEvent extends DemoThemeEvent {
  final bool isLight;

  DemoChangedEvent({this.isLight});
}
