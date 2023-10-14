import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_day11/view_models/app_view_model.dart';
import 'package:todo_day11/views/bottom_sheets/add_task_bottom_sheet_view.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context, viewModel, child) {
      return SizedBox(
        height: 60,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: viewModel.clrvl3,
              foregroundColor: viewModel.clrvl1,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          onPressed: () {
            viewModel.bottomSheldBulider(
                AddTaskBottomSheetView(),
                context);
          },
          child: Icon(
            Icons.add,
            size: 30,
          ),
        ),
      );
    });
  }
}
