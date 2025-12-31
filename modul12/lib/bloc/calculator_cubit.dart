import 'package:flutter_bloc/flutter_bloc.dart';
import 'calculator_state.dart';

class CalculatorCubit extends Cubit<CalculatorState> {
  CalculatorCubit() : super(CalculatorState());

  void input(String value) {
    if (isOperator(value) && state.expression.isNotEmpty) {
      if (isOperator(state.expression[state.expression.length - 1])) {
        emit(state.copyWith(error: "Operator tidak boleh berurutan"));
        return;
      }
    }
    emit(state.copyWith(
      expression: state.expression + value,
      error: null,
    ));
  }

  bool isOperator(String v) =>
      v == "+" || v == "-" || v == "×" || v == "÷";

  void backspace() {
    if (state.expression.isNotEmpty) {
      emit(state.copyWith(
        expression: state.expression.substring(
            0, state.expression.length - 1),
      ));
    }
  }

  void clear() => emit(CalculatorState());

  void calculate() {
    if (state.expression.isEmpty) {
      emit(state.copyWith(error: "Ekspresi kosong"));
      return;
    }
    // logika evaluasi
  }

  void clearHistory() {
    emit(state.copyWith(history: []));
  }
}
