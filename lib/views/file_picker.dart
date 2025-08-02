import 'package:filepicker/bloc/file_bloc.dart';
import 'package:filepicker/bloc/file_event.dart';
import 'package:filepicker/bloc/file_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilePicker extends StatefulWidget {
  const FilePicker({super.key});

  @override
  State<FilePicker> createState() => _FilePickerState();
}

class _FilePickerState extends State<FilePicker> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: BlocBuilder<FileBloc, FileState>(
                builder: (context, state) {
                  return GestureDetector(
                    onTap: () {
                      context.read<FileBloc>().add(PickFile());
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          state.file?.name ?? 'File Upload UI Here',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
