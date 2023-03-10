import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proficiency_exercise/Model/model.dart';
import 'package:proficiency_exercise/resc/api_repository.dart';

part 'api_event.dart';
part 'api_state.dart';

class ApiCalling extends Bloc<ApiEvent, HomeViewState> {
  ApiCalling() : super(ApiInitialState()) {
    final List<Rows> rowsData = [];
    on<ApiLoading>((event, emit) async {
      try {
        DataModel data = await CallingForApi().callingApi();
        rowsData.addAll(data.rows);
        emit(ApiCalledState(data: data.rows));
      } catch (e) {
        emit(ApiFailureState(errorMessage: e.toString()));
      }
    });
    on<Searching>((event, emit) {
      if (event.keyvalue.isEmpty) {
        emit(ApiCalledState(data: rowsData));
      }
      List<Rows> res = rowsData
          .where((element) =>
              element.title
                  ?.toLowerCase()
                  .contains(event.keyvalue.toLowerCase()) ==
              true)
          .toList();
      if (res.isEmpty) {
        emit(ApiSearchResultError(error: "Animal is not present in Data"));
      } else {
        emit(ApiSearchResultState(data: res));
      }
    });
  }
}
