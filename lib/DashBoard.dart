import 'package:flutter/material.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(240, 244, 243, 1),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: <Widget>[
                  Container(color: const Color(0xff50C2C9), height: 300,),
                  Positioned(
                    top: -20,
                  left: -100,
                    child: Container(width: 200,height: 200, decoration: const BoxDecoration( color: Color.fromRGBO(236, 225, 253,0.5),shape: BoxShape.circle),),
                  ),
                  Positioned(
                    top: -100,
                  left: -20,
                    child: Container(width: 200,height: 200, decoration: const BoxDecoration( color: Color.fromRGBO(236, 225, 253,0.5),shape: BoxShape.circle),),
                  ),
                  Positioned(
                    right: 160,
                    top: 120,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      Image.asset('assets/images/foto3.png'),
                      const SizedBox(height: 30,),
                      const Text('Welcome Jeegar goyani', style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.w700),),
                    ],),
                  ),
                ],
              ),
              Transform.translate(
            offset:  Offset(185, 30),
               child: Text(
                    'Good Afternoon',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                   fontFamily: 'IbarraRealNova',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        ),
                  ),
              ),
              const SizedBox(height: 50),
                  Image.asset(
                    'images/clock.png',
                    height: 100,
                    width: 150,
                  ),
                  const SizedBox(height: 5,),
                  Transform.translate(
                offset: Offset(-200, 10),
                child: Text(
                  'Task list',
                  style: TextStyle(
                    fontFamily: 'IbarraRealNova',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              
              Positioned(
              top: 900,
              left: 10,
              child: Container(
                width: 350,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],

                  
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Daily Task',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Add button pressed
                },
                child: Icon(
                    Icons.add,
                    color: Colors.blue, // Warna ikon
                  ),
              ),
            ],
          ),
                      SizedBox(height: 20),
                      ListView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          TaskListItem(description: 'Learning Programming by 12PM'),
                          TaskListItem(description: 'Learn how to cook by 1PM'),
                          TaskListItem(description: 'Learn how to play at 2PM'),
                          TaskListItem(description: 'Have lunch at 4PM'),
                          TaskListItem(description: 'Going to travel 6PM'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ], 
          ),
        )
    );
    
  
  }
}

class TaskListItem extends StatefulWidget {
  final String description;

  const TaskListItem({Key? key, required this.description}) : super(key: key);

  @override
  _TaskListItemState createState() => _TaskListItemState();
}

class _TaskListItemState extends State<TaskListItem> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          activeColor: Colors.blue, // Warna saat checkbox di centang
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        Text(widget.description),
      ],
    );
  }
}