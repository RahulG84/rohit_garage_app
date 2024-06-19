// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:auto_garage_jobcard/screens/job_card_screen.dart';
import 'package:auto_garage_jobcard/widgets/job_card_item.dart';
import '../models/job_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final List<JobCard> jobCards = [
  ];

  void _addNewJobCard(JobCard jobCard) {
    setState(() {
      jobCards.add(jobCard);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auto Garage Job Cards'),
      ),
      body: ListView.builder(
        itemCount: jobCards.length,
        itemBuilder: (context, index) {
          return JobCardItem(jobCard: jobCards[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => JobCardScreen(onSave: _addNewJobCard),
            ),
          );
        },
      ),
    );
  }
}
