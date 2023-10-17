import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_day12/view_models/app_view_model.dart';

class TaskInfoView extends StatelessWidget {
  const TaskInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context, viewModel, child) {
      return Container(
        margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: viewModel.clrvl2, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.center,
                        child: FittedBox(
                          child: Text(
                            "${viewModel.numTasks}",
                            style: TextStyle(
                                fontSize: 28,
                                color: viewModel.clrvl3,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: FittedBox(
                            child: Text(
                          "Total Tasks",
                          style: TextStyle(
                              color: viewModel.clrvl4, fontWeight: FontWeight.w600),
                        )),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 20,),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    color: viewModel.clrvl2, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.center,
                        child: FittedBox(
                          child: Text(
                            "${viewModel.numTaskRemaining}",
                            style: TextStyle(
                                fontSize: 28,
                                color: viewModel.clrvl3,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: FittedBox(
                            child: Text(
                              "Remaining Tasks",
                              style: TextStyle(
                                  color: viewModel.clrvl4, fontWeight: FontWeight.w600),
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],

        ),
      );
    });
  }
}
