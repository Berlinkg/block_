import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'wishlest_event.dart';
part 'wishlest_state.dart';

class WishlestBloc extends Bloc<WishlestEvent, WishlestState> {
  WishlestBloc() : super(WishlestInitial()) {
    on<WishlestEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
