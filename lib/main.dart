import 'package:filepicker/bloc/file_bloc.dart';
import 'package:filepicker/views/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FileBloc(),
      child: MaterialApp(home: FilePicker()),
    );
  }
}
