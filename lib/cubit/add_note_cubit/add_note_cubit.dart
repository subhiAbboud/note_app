import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_note_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteState> {
  AddNoteCubitCubit() : super(AddNoteInitial());
}
