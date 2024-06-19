// lib/screens/job_card_screen.dart
import 'package:flutter/material.dart';
import '../models/job_card.dart';

class JobCardScreen extends StatefulWidget {
  final Function(JobCard) onSave;

  const JobCardScreen({required this.onSave, super.key});

  @override
  JobCardScreenState createState() => JobCardScreenState();
}

class JobCardScreenState extends State<JobCardScreen> {
  final _customerNameController = TextEditingController();
  final _vehicleDetailsController = TextEditingController();
  final _jobDescriptionController = TextEditingController();

  void _saveJobCard() {
    final customerName = _customerNameController.text;
    final vehicleDetails = _vehicleDetailsController.text;
    final jobDescription = _jobDescriptionController.text;

    if (customerName.isEmpty || vehicleDetails.isEmpty || jobDescription.isEmpty) {
      return;
    }

    final newJobCard = JobCard(
      id: DateTime.now().toString(),
      customerName: customerName,
      vehicleDetails: vehicleDetails,
      jobDescription: jobDescription,
      date: DateTime.now(),
    );

    widget.onSave(newJobCard);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Job Card'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _customerNameController,
              decoration: const InputDecoration(labelText: 'Customer Name'),
            ),
            TextField(
              controller: _vehicleDetailsController,
              decoration: const InputDecoration(labelText: 'Vehicle Details'),
            ),
            TextField(
              controller: _jobDescriptionController,
              decoration: const InputDecoration(labelText: 'Job Description'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveJobCard,
              child: const Text('Save Job Card'),
            ),
          ],
        ),
      ),
    );
  }
}
