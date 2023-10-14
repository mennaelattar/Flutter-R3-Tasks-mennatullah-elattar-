import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_day11/view_models/app_view_model.dart';
import 'package:todo_day11/views/bottom_sheets/settings_bottom_sheet_view.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context, viewModel, child) {
      return Container(
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Text(
                              "Welcome Back,",
                              style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w400,
                                  color: viewModel.clrvl4),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Text(
                              "${viewModel.username}",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: viewModel.clrvl4),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.delete,
                      color: viewModel.clrvl3,
                      size: 40,
                    ))),
            Expanded(
                flex: 1,
                child: InkWell(
                    onTap: () {
                      viewModel.bottomSheldBulider(SettingsBottomSheetView(), context);
                    },
                    child: Icon(
                      Icons.settings,
                      color: viewModel.clrvl3,
                      size: 40,
                    ))),
          ],
        ),
      );
    });
  }
}
