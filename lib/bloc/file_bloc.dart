import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:file_picker/file_picker.dart';
import 'package:filepicker/bloc/file_event.dart';
import 'package:filepicker/bloc/file_state.dart';
import 'package:filepicker/views/file_picker.dart' hide FilePicker;

class FileBloc extends Bloc<FileEvent, FileState> {
  FileBloc() : super(FileState()) {
    on<PickFile>(_pickFile);
    on<DeleteFile>(deleteFile);
  }

  Future<void> _pickFile(PickFile event, Emitter<FileState> emit) async {
    final res = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
    );
    if (res != null && res.files.isNotEmpty) {
      emit(state.copyWith(file: res.files.first, isUploaded: false));
    }
  }

  void deleteFile(DeleteFile event, Emitter<FileState> emit) {
    emit(state.copyWith(file: null, isUploaded: false));
  }
}
