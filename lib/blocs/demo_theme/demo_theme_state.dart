part of 'demo_theme_bloc.dart';

abstract class DemoThemeState extends Equatable {
  @override
  List<Object> get props => [];
}

class DemoThemeInitial extends DemoThemeState {}

class DemoThemeChaned extends DemoThemeState {
  final bool isLight;
  DemoThemeChaned({this.isLight});

  @override
  List<Object> get props => [isLight];
}
