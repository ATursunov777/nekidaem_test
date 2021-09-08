import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nekidaem_test/screens/task_list/tasks_bloc/tasks_bloc.dart';
import 'package:nekidaem_test/theme/color_theme.dart';
import 'package:nekidaem_test/theme/text_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../auth/auth_screen.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: ColorPalette.backgroundBlack,
          appBar: AppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: FloatingActionButton(
                    backgroundColor: ColorPalette.focusedBorder,
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AuthScreen()));
                    },
                    child: const Icon(
                      Icons.arrow_back,
                    )),
              )
            ],
            backgroundColor: ColorPalette.gray,
            bottom: TabBar(
              tabs: [
                Tab(text: AppLocalizations.of(context)!.onHold),
                Tab(text: AppLocalizations.of(context)!.inProgress),
                Tab(text: AppLocalizations.of(context)!.needsRevison),
                Tab(text: AppLocalizations.of(context)!.approved),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              _TasksList(
                row: '0',
              ),
              _TasksList(
                row: '1',
              ),
              _TasksList(
                row: '2',
              ),
              _TasksList(
                row: '3',
              )
            ],
          ),
        ),
      ),
    ));
  }
}

class _TasksList extends StatelessWidget {
  final String row;
  const _TasksList({Key? key, required this.row}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TasksBloc>(
        create: (BuildContext context) =>
            TasksBloc()..add(TasksEvent.initial(row: row)),
        child: BlocConsumer<TasksBloc, TasksState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state.maybeMap(
                orElse: () => Text('Error'),
                loadInProgress: (_) =>
                    Center(child: CircularProgressIndicator()),
                loadSuccess: (_data) => Container(
                      padding: const EdgeInsets.all(20),
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: _data.cardList.length,
                          itemBuilder: (_, index) {
                            return Container(
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: ColorPalette.grayLight,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${AppLocalizations.of(context)!.id.toUpperCase()}: ${_data.cardList[index].id.toString()}',
                                      style: TextThemes.cardId,
                                    ),
                                    Text(_data.cardList[index].text,
                                        style: TextThemes.cardContent),
                                  ],
                                ));
                          }),
                    ));
          },
        ));
  }
}
