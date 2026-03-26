import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Task> tasks = [
    Task(title: "Isc na studia", deadline: "10:00", done: true, priority: "high"),
    Task(title: "Zrobic obiad", deadline: "15:00", done: false, priority: "high"),
    Task(title: "Zrobic zadanie domowe", deadline: "18:00", done: true, priority: "medium"),
    Task(title: "Isc na silownie", deadline: "21:00", done: false, priority: "low"),
  ];

  @override
  Widget build(BuildContext context) {
    int doneCount = tasks.where((t) => t.done).length;
    return MaterialApp(
      title: 'Flutter Demo',
      home: Center(
        child: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            final task = tasks[index];

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (index == 0) Text("Masz dziś ${tasks.length} zadania, ($doneCount zrobione)"),
                if (index == 0)
                  Text(
                    "Dzisiejsze zadania",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),

                TaskCard(
                  title: task.title,
                  subtitle: "termin: ${task.deadline} | priorytet ${task.priority}",
                  icon: task.done ? Icons.check_circle : Icons.radio_button_unchecked,
                ),
              ],
            );
          },
          ),
        )
    );
  }
}

class Task {
  final String title;
  final String deadline;
  final bool done;
  final String priority;

  Task({required this.title, required this.deadline, required this.done, required this.priority});
}

class TaskCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const TaskCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 12),
      child: ListTile(
        contentPadding: EdgeInsets.all(12),
        leading: Icon(icon),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
      ),
    );
  }
}