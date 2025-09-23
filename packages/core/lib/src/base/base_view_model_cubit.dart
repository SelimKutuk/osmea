import 'package:flutter_bloc/flutter_bloc.dart';
 
abstract class BaseViewModelCubit<S> extends Cubit<S> {
 
  BaseViewModelCubit(S state) : super(state);
 
  set stateCurrentValue(S value) {
    // ignore: invalid_use_of_visible_for_testing_member
    emit(value);
  }
 
  void stateChanger(S state) {
    // ignore: invalid_use_of_visible_for_testing_member
    emit(state);
  }
 
  @override
  void onChange(Change<S> change) {
    // _logger.printBaseViewModelQubitLogs([
    //   "Before",
    //   change.currentState.toString(),
    //   "After",
    //   change.nextState.toString()
    // ]);
    super.onChange(change);
  }
}
 
 