import 'package:filter_list/filter_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parttime/model/user.dart';
import 'package:search_choices/search_choices.dart';

class TestController extends GetxController {
  TextEditingController search = TextEditingController();
  List<User> userList = [
    User(name: "Jon", avatar: "1"),
    User(name: "Jon", avatar: "2"),

    User(name: "Jon1", avatar: ""),
    User(name: "Jon2", avatar: ""),
    User(name: "Jon3", avatar: ""),

    User(name: "Lindsey ", avatar: ""),
    User(name: "Valarie ", avatar: ""),
    User(name: "Elyse ", avatar: ""),
    User(name: "Ethel ", avatar: ""),
    User(name: "Emelyan ", avatar: ""),
    User(name: "Catherine ", avatar: ""),
    User(name: "Stepanida  ", avatar: ""),
    User(name: "Carolina ", avatar: ""),
    User(name: "Nail  ", avatar: ""),
    User(name: "Kamil ", avatar: ""),
    User(name: "Mariana ", avatar: ""),
    User(name: "Katerina ", avatar: ""),
  ];
  List<User> dataList = [
    User(name: "Jon", avatar: ""),
    User(name: "Lindsey ", avatar: ""),
    User(name: "Valarie ", avatar: ""),
  ];
  List<User>? selectedUserList = [];
  List<User>? filteredList = [];
  void openFilterDialog(BuildContext context) async {
    await FilterListDialog.display<User>(
      context,
      listData: dataList,
      selectedListData: selectedUserList,
      choiceChipLabel: (user) => user!.name,
      validateSelectedItem: (list, val) => list!.contains(val),
      onItemSearch: (user, query) {
        return user.name!.toLowerCase().contains(query.toLowerCase());
      },

      onApplyButtonClick: (list) {
        selectedUserList = List.from(list!);
        filterCompanies();
        Navigator.pop(context);
      },
    );
    update();
  }

  void filterCompanies() {
    if (selectedUserList!.isEmpty) {
      selectedUserList = userList;
    }
    filteredList =
        userList.where((item) {
          for (var element in selectedUserList!) {
            return element.name!.contains(item.name!);
          }

          return true;
        }).toList();
  }

  String selectedValueSingleDialog = "";
  void singleDialog(String value) {
    SearchChoices.single(
      items: [
        DropdownMenuItem(child: Text("Web Developer")),
        DropdownMenuItem(child: Text("Mobile Developer")),
      ],
      value: value,
      hint: "Select one",
      searchHint: "Select one",
      onChanged: (value) {
        selectedValueSingleDialog = value;
      },
      dialogBox: true,
      isExpanded: true,
    );

    update();
  }
}
