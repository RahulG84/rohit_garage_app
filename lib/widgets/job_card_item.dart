// lib/widgets/job_card_item.dart
import 'package:flutter/material.dart';
import '../models/job_card.dart';

class JobCardItem extends StatelessWidget {
  final JobCard jobCard;

  const JobCardItem({super.key, required this.jobCard});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: ListTile(
        title: Text(jobCard.customerName),
        subtitle: Text('${jobCard.vehicleDetails}\n${jobCard.jobDescription}'),
        isThreeLine: true,
        trailing: Text(
          '${jobCard.date.day}/${jobCard.date.month}/${jobCard.date.year}',
          style: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
