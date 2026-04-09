class Task {
  final String title;
  final String deadline;
  final bool done;
  final String priority;

  Task({required this.title, required this.deadline, required this.done, required this.priority,});
}

class TaskRepository {
  static List<Task> tasks = [
    Task(title: "Isc na studia", deadline: "10:00", done: true, priority: "high"),
    Task(title: "Zrobic obiad", deadline: "15:00", done: false, priority: "high"),
    Task(title: "Zrobic zadanie domowe", deadline: "18:00", done: true, priority: "medium"),
    Task(title: "Isc na silownie", deadline: "21:00", done: false, priority: "low"),
  ];
}