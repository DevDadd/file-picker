// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:file_picker/file_picker.dart';

class FileState extends Equatable {
  const FileState({this.file, this.isUploaded = false});
  final PlatformFile? file;
  final bool isUploaded;
  @override
  List<Object?> get props => [file, isUploaded];

  FileState copyWith({PlatformFile? file, bool? isUploaded}) {
    return FileState(
      file: file ?? this.file,
      isUploaded: isUploaded ?? this.isUploaded,
    );
  }
}
