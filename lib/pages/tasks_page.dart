import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                CollectionReference tasksReference = FirebaseFirestore.instance
                    .collection("tasks");
                tasksReference.get().then((value) {
                  print("TaskReference: $value");

                  QuerySnapshot taskCollection = value;
                  print("Tamaño: ${taskCollection.size}");

                  List<QueryDocumentSnapshot> docs = taskCollection.docs;
                  print(docs);

                  docs.forEach((document) {
                    print("----------------------------------");
                    print(document.id);
                    print(document.data());
                    print("----------------------------------");
                  });
                });
              },
              child: Text("Obtener tareas"),
            ),
          ],
        ),
      ),
    );
  }
}
