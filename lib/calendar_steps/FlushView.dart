import 'package:flutter/material.dart';
import 'package:time_boxing/home_steps/data/PlanTime.dart';

class FlushView extends StatefulWidget {
  final List<String> nameList;
  final List<String> priority;
  final List<PlanTime> planList;
  final PageController pc;
  const FlushView({super.key, required this.nameList, required this.priority, required this.planList, required this.pc});

  @override
  State<FlushView> createState() => _FlushViewState();
}

class _FlushViewState extends State<FlushView> {
  List<String> nameList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Step 1: Flush"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.all(3),
              itemCount: widget.nameList.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                    child: ListTile(
                      title: Padding(padding: const EdgeInsets.only(left: 10), child: Text(widget.nameList[index], style: const TextStyle(fontSize: 21))),
                  )
                );
              }
            )
          ),
           Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: OutlinedButton(
                    onPressed: () {
                      widget.pc.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.ease);
                    },
                    child: const Text("다음"))
                )
              )
            ],
          )
        ],
      )
    );
  }
}