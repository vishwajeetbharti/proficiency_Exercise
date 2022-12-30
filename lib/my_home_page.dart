import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proficiency_exercise/Model/model.dart';
import 'package:proficiency_exercise/bloc/api_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String value = "";

  final ApiCalling _apiCalling = ApiCalling();

  @override
  void initState() {
    super.initState();
    _apiCalling.add(ApiLoading());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Project"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Search title"),
              onChanged: (text) {
                _apiCalling.add(Searching(keyvalue: text));
              },
            ),
          ),
          BlocProvider(
            create: (_) => _apiCalling,
            child: BlocBuilder<ApiCalling, HomeViewState>(
                builder: (context, state) {
              if (state is ApiCalledState) {
                return _listViewCard(context, state.data);
              } else if (state is ApiSearchResultState) {
                return _listViewCard(context, state.data);
              } else if (state is ApiFailureState) {
                return _listViewLoading();
              } else if (state is ApiInitialState) {
                return _listViewLoading();
              } else {
                return _listViewLoading();
              }
            }),
          ),
        ],
      ),
    );
  }

  Widget _listViewCard(BuildContext context, List<Rows> data) {
    return Expanded(
      child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Text(
                  data[index].title!,
                  style: const TextStyle(fontSize: 30),
                ),
                if (data[index].imageHref != null)
                  Image.network(data[index].imageHref!),
                Text(
                  data[index].description!,
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            );
          }),
    );
  }

  Widget _listViewLoading() => const Center(child: CircularProgressIndicator());
}
