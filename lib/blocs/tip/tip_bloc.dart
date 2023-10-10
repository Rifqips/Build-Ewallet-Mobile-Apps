import 'package:bank_sha/blocs/auth/auth_bloc.dart';
import 'package:bank_sha/models/tip_model.dart';
import 'package:bank_sha/services/tip_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'tip_event.dart';
part 'tip_state.dart';

class TipBloc extends Bloc<TipEvent, TipState> {
  TipBloc() : super(TipInitial()) {
    on<TipEvent>((event, emit) async {
      if (event is TipGet) {
        try {
          emit(TipLoading());
          final tips = await TipService().getTips();
          emit(TipSuccess(tips));
        } catch (e) {
          emit(TipFailed(e.toString()));
        }
      }
    });
  }
}
