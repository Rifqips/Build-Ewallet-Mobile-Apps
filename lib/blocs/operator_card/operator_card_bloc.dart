import 'package:bank_sha/models/operator_card_model.dart';
import 'package:bank_sha/services/operator_card_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'operator_card_event.dart';
part 'operator_card_state.dart';

class OperatorCardBloc extends Bloc<OperatorCardEvent, OperatorCardState> {
  OperatorCardBloc() : super(OperatorCardInitial()) {
    on<OperatorCardEvent>((event, emit) async {
      if (event is OperatorCardGet) {
        try {
          emit(OperatorCardLoading());
          final operatorCards = await OperatorCardService().getOperatorCards();
          emit(OperatorCardSuccess(operatorCards));
        } catch (e) {
          print(e.toString());
          emit(
            OperatorCardFailed(e.toString()),
          );
        }
      }
    });
  }
}
