import 'package:equatable/equatable.dart';

class FileEvent extends Equatable {
  const FileEvent();

  @override
  List<Object> get props => [];
}

class PickFile extends FileEvent {}

class LoadFile extends FileEvent {}

class DeleteFile extends FileEvent {}
