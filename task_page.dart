import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
    const TaskPage({super.key});

    @override
    State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
    final List<Widget> taskList = [];
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.grey[300],
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(80),
                child: Container(
                    child: AppBar(
                        automaticallyImplyLeading: false,
                        title: Center(
                            child: Text(
                                "\nTask Board",
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 25,
                                ),
                            ),
                        ),
                        backgroundColor: Colors.white,
                    ),
                ),
            ),

            body: Center(
                child: ListView.builder(
                    itemCount: taskList.length,
                    itemBuilder: (context, index) {
                        return taskList[index];
                    },
                ),
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: () {
                    setState(() {
                        taskList.add(TaskWidget(taskList.length + 1, DateTime.now()));
                    });
                },
                child: Icon(Icons.add, color: Colors.white),
                backgroundColor: Colors.grey[800],
            ),
        );
    }
}

class TaskWidget extends StatelessWidget {
    final int taskNumber;
    final DateTime time;

    TaskWidget(this.taskNumber, this.time);

    @override
    Widget build(BuildContext context) {
        return Container(
            margin: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
            padding: EdgeInsets.all(25.0),
            decoration: BoxDecoration(
                color: Colors.white,
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Text(
                        "Task $taskNumber",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w900,
                        ),
                    ),
                    SizedBox(
                        height: 5
                    ),
                    Text(
                        "Your Personal task management and planning solution for planning your day, week & months",
                        style: TextStyle(
                            fontSize: 20,
                        ),
                    ),
                    SizedBox(
                        height: 10.0
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                            "${_formatDateTime(time)}",
                            style: TextStyle(
                                fontSize: 17,
                            ),
                        ),
                    ),
                ]
            ),
        );
    }

    String _formatDateTime(DateTime dateTime) {
        String hour = dateTime.hour.toString().padLeft(2, '0');
        String minute = dateTime.minute.toString().padLeft(2, '0');
        String period = dateTime.hour < 12 ? 'am' : 'pm';
        String day = dateTime.day.toString().padLeft(2, '0');
        String month;
        switch (dateTime.month) {
            case 1:
                month = 'January';
                break;
            case 2:
                month = 'February';
                break;
            case 3:
                month = 'March';
                break;
            case 4:
                month = 'April';
                break;
            case 5:
                month = 'May';
                break;
            case 6:
                month = 'June';
                break;
            case 7:
                month = 'July';
                break;
            case 8:
                month = 'August';
                break;
            case 9:
                month = 'September';
                break;
            case 10:
                month = 'October';
                break;
            case 11:
                month = 'November';
                break;
            case 12:
                month = 'December';
                break;
            default:
                month = '';
        }
        String year = dateTime.year.toString();
        return '$hour:$minute $period - $day $month, $year'; 
    }
}