import 'package:flutter/material.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({super.key});

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Database'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter ProductName"),
                  ),
                ),
              ),
              FloatingActionButton(
                elevation: 0,
                backgroundColor: Colors.white,
                onPressed: () {
                  if(controller.text.isNotEmpty){
                   
                  }
                },
                splashColor: Colors.white,
                child: const Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 40,
                ),
              )
            ],
          ),
          Expanded(
            flex: 9,
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) => const Card(
                elevation: 0,
                  child: ListTile(
                title: Text('Coca'),
              )),
            ),
          )
        ],
      ),
    );
  }
}
