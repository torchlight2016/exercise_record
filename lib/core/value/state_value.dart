import 'package:equatable/equatable.dart';

sealed class StateValue<T> extends Equatable {}

class InitialState<T> extends StateValue<T> {
  @override
  List<Object?> get props => [];
}

class LoadingState<T> extends StateValue<T> {
  @override
  List<Object?> get props => [];
}

class LoadedState<T> extends StateValue<T> {
  final T data;

  LoadedState(this.data);

  @override
  List<Object?> get props => [data];
}

class ErrorState<T> extends StateValue<T> {
  final Object error;
  final StackTrace? stackTrace;

  ErrorState(this.error, {this.stackTrace});

  @override
  List<Object?> get props => [error, stackTrace];
}
