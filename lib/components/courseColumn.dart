import 'package:flutter/material.dart';
import 'package:flutter_test_project/itens/courseItem.dart';

class CourseColumn extends StatefulWidget {

  final Color color;
  final String text;
  final int itemCount;

  const CourseColumn({super.key, required this.text, required this.color, required this.itemCount});

  @override
  State<CourseColumn> createState() => _CourseColumnState();
}

class _CourseColumnState extends State<CourseColumn> {

  final List<CourseItem> items = [];


  @override
  Widget build(BuildContext context) {

    void addItem(){
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("teste"),
          content: Text("TESTE CONTENT"),
        )
      );
    }

    void deleteItem(){
      setState(() {
      });
    }

    return Expanded(
      child: Container(
        alignment: Alignment.topCenter,
        color: widget.color,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Text(widget.text,style: TextStyle(fontSize: 30)),
            
                SizedBox(width: 100),
            
                FilledButton(
                  onPressed: addItem,
                  child: Text("Adicionar")
                ),

                SizedBox(width: 30),

                FilledButton(
                  onPressed: deleteItem,
                  child: Text("Excluir")
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return CourseItem();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}