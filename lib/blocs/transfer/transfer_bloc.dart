import 'package:bank_sha/models/transfer_form_model.dart';
import 'package:bank_sha/services/transaction_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'transfer_event.dart';
part 'transfer_state.dart';

class TransferBloc extends Bloc<TransferEvent, TransferState> {
  TransferBloc() : super(TransferInitial()) {
    on<TransferEvent>((event, emit) async{
      if (event is TransferPost) {
        try {
          emit(TransferLoading());

          await TransactionService().transfer(event.data);

          emit(TransferSuccess());
        } catch (e) {
          print(e);

          emit(TransferFailed(e.toString()));
        }
      }
    });
  }
}
