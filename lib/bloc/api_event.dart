part of 'api_bloc.dart';

abstract class ApiEvent {}

class ApiLoading extends ApiEvent {}

class Searching extends ApiEvent {
  String keyvalue;
  Searching({required this.keyvalue});
}

class InternetConnectionEvent extends ApiEvent {}
