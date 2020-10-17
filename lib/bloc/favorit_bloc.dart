import 'package:bloc/bloc.dart';

class FavoritBloc extends Bloc<bool, bool> {
  FavoritBloc(bool initialState) : super(initialState);

  @override
  Stream<bool> mapEventToState(bool event) async* {
    yield event;
  }
}
