
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/demo_theme/demo_theme_bloc.dart';
import 'home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DemoThemeBloc _demoThemeBloc;

  @override
  void initState() {
    super.initState();
    _demoThemeBloc = DemoThemeBloc();
    _demoThemeBloc.add(DemoChangedEvent(isLight: true));
  }

  @override
  void dispose() {
    _demoThemeBloc?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _demoThemeBloc,
      child: BlocBuilder<DemoThemeBloc, DemoThemeState>(
        builder: (context, state) {
          if (state is DemoThemeChaned) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData.light(),
              darkTheme: ThemeData.dark(),
              themeMode: state.isLight ? ThemeMode.light : ThemeMode.dark,
              home: HomeScreen(),
            );
          } else {
            return SizedBox.shrink();
          }
        },
      ),
    );
  }
}