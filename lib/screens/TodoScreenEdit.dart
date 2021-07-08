import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todolist/controllers/TodoController.dart';
import 'package:getx_todolist/models/Todo.dart';

class TodoScreenEdit extends StatelessWidget {
  //const TodoScreen({ Key? key }) : super(key: key);
  final TodoController todoController = Get.find();
  final int index;
  TodoScreenEdit({required this.index});

  @override
  Widget build(BuildContext context) {
    String text = '';
    text = todoController.todos[index].text;
    TextEditingController textEditingController =
        TextEditingController(text: text);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(36.0),
        child: Column(
          children: [
            Expanded(
              child: TextField(
                controller: textEditingController,
                autofocus: true,
                decoration: InputDecoration(
                    hintText: 'What do you want to accomplish?',
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none),
                style: TextStyle(fontSize: 25.0),
                keyboardType: TextInputType.multiline, //올라오는 키보드 종류에 따라서
                maxLines: 999,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text('Cancel'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    var editing = todoController.todos[index];
                    editing.text = textEditingController.text;
                    todoController.todos[index] = editing;
                    Get.back();
                  },
                  child: Text('Edit'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
