import 'dart:async';

import 'package:app_trips/User/bloc/bloc_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'platzi_trips.dart';
import 'platzi_trips_cupertino.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light
      )
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MaterialApp(
        title: 'Flutter Demo',
        home: PlatziTripsCupertino(),
      ),
      bloc: UserBloc(),
    );
  }
}