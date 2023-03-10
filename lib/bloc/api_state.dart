part of 'api_bloc.dart';

abstract class HomeViewState {}

class ApiInitialState extends HomeViewState {
  ApiInitialState();
}

class ApiCalledState extends HomeViewState {
  List<Rows> data;
  ApiCalledState({required this.data});
}

class ApiFailureState extends HomeViewState {
  String errorMessage;
  ApiFailureState({required this.errorMessage});
}

class ApiSearchResultState extends HomeViewState {
  List<Rows> data;
  ApiSearchResultState({required this.data});
}

class ApiSearchResultError extends HomeViewState {
  String error;
  ApiSearchResultError({required this.error});
}
