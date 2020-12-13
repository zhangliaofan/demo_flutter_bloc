import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/demo_theme/demo_theme_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('theme_flatter_bloc'),
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DemoThemeBloc, DemoThemeState>(
      builder: (context, state) {
        if (state is DemoThemeChaned) {
          return Center(
            child: GestureDetector(
              onTap: () {
                BlocProvider.of<DemoThemeBloc>(context).add(
                  DemoChangedEvent(isLight: !state.isLight),
                );
              },
              child: Icon(state.isLight ? Icons.wb_sunny : Icons.brightness_3,size: 29),
            ),
          );
        } else {
          return SizedBox.shrink();
        }
      },
    );
  }
}
