import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_day12/models/task_model.dart';
import 'package:todo_day12/view_models/app_view_model.dart';

class AddTaskBottomSheetView extends StatelessWidget {
  const AddTaskBottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController entreyController = TextEditingController();

    return Consumer<AppViewModel>(builder: (context, viewModel, child) {
      return Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          height: 80,
          child: Center(
            child: SizedBox(
              height: 40,
              width: 250,
              child: TextField(
                onSubmitted: (value){
                   if(entreyController.text.isNotEmpty)
                     {
                       Task newTask = Task(entreyController.text, false);
                       viewModel.addTask(newTask);
                       entreyController.clear();
                     }
                   //to remove the bottom sheeter view from screen
                   Navigator.of(context).pop();
                },
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 5),
                    filled: true,
                    fillColor: viewModel.clrvl2,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none))),
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                cursorColor: viewModel.clrvl4,
                autofocus: true,
                autocorrect: false,
                controller: entreyController,
                style:
                    TextStyle(color: viewModel.clrvl4, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      );
    });
  }
}
