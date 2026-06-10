void main (){

  List <String>tasks = [];

  addTask(tasks, 'learnig dart');
  addTask(tasks, 'its a coding practice ');
  addTask(tasks, 'today the app is sent for review ');
  
completeTask(tasks, 'learnig dart');

  displayTasks(tasks);

}


void addTask (List<String> tasks ,String task ) {
  tasks.add(task);
  print('added : $task');

}
void displayTasks(List<String>tasks){
  if (tasks.isEmpty){
    print('no tasks available ! All done...');
  }else{
    for(int i = 0 ; i < tasks.length ; i ++){
      print('${i + 1 }. ${tasks[i]}');
    }
  }
  print('================================\n');
}

void completeTask (List <String> tasks , String task){
  if (tasks.contains(task)){
    tasks.remove(task);
    print('completed : $task');
  }else{
    print('task not found : enter $task');
  }
}